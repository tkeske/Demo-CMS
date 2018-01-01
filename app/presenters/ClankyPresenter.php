<?php

/**
 * @author Tomáš Keske
 */

namespace App\Presenters;

use Nette\Application\UI\Form;
use App\Article;
use App\Category;


class ClankyPresenter extends RestrictedPresenter
{
    public function createComponentClanekForm(){

        $form = new Form;
        $form->setRenderer(new \Bs3FormRenderer());

        $form->addText('title', 'Název článku:')->addRule(Form::FILLED, "Pole musí být vyplněno.");

        $form->addTextArea('obsah', 'Obsah článku:',40,10)->addRule(Form::FILLED, "Pole musí být vyplněno.");

        //render kategorií z databáze do formu
        $kategorie = $this->em->getRepository('App\Category')->findAll();

        foreach($kategorie as $cat){
            $h[$cat->id] = $cat->jmeno;
        }

        //pokud máme, vykreslujeme
        if (isset($h)){
            $form->addMultiSelect('kategorie', 'Kategorie:', $h);
        }

        $form->addUpload('files', 'Obrázek:', TRUE)->setRequired(false)
            ->addRule(\Nette\Forms\Form::IMAGE, "Akceptované soubory jsou *.jpeg, *.gif, *.png");

        $form->addSubmit('submit', 'Publikovat');

        $form->onSuccess[] = [$this, 'clanekFormSuccess'];

        return $form;
    }

    public function clanekFormSuccess(Form $form, $values){

        //upload obrázků
        foreach($values["files"] as $file){
            if ($file->isImage() && $file->isOk()){

                //získání původní přípony souboru
                $file_ext = strtolower(mb_substr($file->getSanitizedName(), strrpos($file->getSanitizedName(), ".")));

                //generujeme nepředvídatelný názevsouboru
                $file_name = uniqid(rand(0,20), TRUE).$file_ext;

                //cesta k souboru
                $path = __DIR__ . '../../../www/images/'. $file_name;

                //dáme do pole v případě že je obrázků více
                $paths[]  =  $file_name;
                $file->move($path);
            }
        }

        //existuje jen když je upload
        //POZOR závisí na tom logika editace
        if (isset($paths)){
            $json = json_encode($paths);
        }
    
        //ověření kategorií
        $cat = $values["kategorie"];

        if (!$cat){
            $form->addError("Zařaďte prosím článek do kategorie");
        } else {

            foreach($cat as $c){
                $h[] = $this->em->getRepository('App\Category')->find($c);
            }

            $id = $this->getParameter('id');

            if ($id){
                //čekni podle id
                //větev pro editaci příspěvku
                $article = $this->em->getRepository("App\Article")->find($id);
                $article->title = $values["title"];
                $article->text  = $values["obsah"];
                $article->slug  = $values["title"];
                $article->date  = date("d-M-Y");
                $article->setCategory($h);

                //zachování existujících obrázků při editaci příspěvku
                //logika editace
                if (isset($paths)){

                    //získat existující obrázky pokud nějaké jsou
                    $hlp = json_decode($article->obrazky);

                    if (is_array($hlp)){

                        //merge s novýma uploadama
                        $e = array_merge($hlp,$paths);
                        $article->obrazky = json_encode($e);
                    } else {

                        //větev kdy ještě neexistují žádné obrázky pro příspěvek
                        //můžeme dát přímo do jsonu
                        $article->obrazky = json_encode($paths);
                    }    
                }

            } else {

                //zcela nový příspěvek
                $article = new Article;
                $article->title = $values["title"];
                $article->text = $values["obsah"];
                $article->slug  = $values["title"];
                $article->date  = date("d-M-Y");
                $article->obrazky = isset($json) ? $json : "";
                $article->setCategory($h);
            }

            //persistujeme
            $this->em->persist($article);
            $this->em->flush();

            $this->redirect('Admin:clanky');
        }
    }

    public function actionSmazObrazek($id, $obrazek){
        $article = $this->em->getRepository("App\Article")->find($id);

        $dec = (array) json_decode($article->obrazky);

        //reindexace pole kvuli nefunkcnimu unsetu
        foreach($dec as $d =>$v){
            $xx[] = $v;
        }

        //vyhledej obrazek v poli
        $key = array_search($obrazek, $xx);

        //konecne jej vymaz
        unset($xx[$key]);

        //znovu enkoduj
        $p = json_encode($xx);

        //persistence
        $article->obrazky = $p;

        $this->em->persist($article);
        $this->em->flush();
        $this->redirect('Clanky:Edituj',$id);
    }

    public function actionDelete($id){

    	$article = $this->em->getRepository("App\Article")->find($id);

    	if ($article){

	    	$this->em->remove($article);
	    	$this->em->flush();
	    }

        $this->flashMessage("Článek byl úspěšně smazán.");
	    $this->redirect("Clanky:smaz");
    }

    public function renderEditovat($page = 1){

        $this->pagination($page);
    }

    public function renderSmaz($page = 1){
        
        $this->pagination($page);
    }

    public function pagination($page){

        //strankovani pro featury odebrat a editovat
        $clanky = $this->em->getRepository('App\Article')->findAll();

        $count = count($clanky);

        $paginator = new \Nette\Utils\Paginator;
        $paginator->setItemCount($count); // celkový počet článků
        $paginator->setItemsPerPage(5); // počet položek na stránce
        $paginator->setPage($page);

        $clanky = $this->em->createQuery('SELECT a FROM App\Article a ORDER BY a.id DESC')
                    ->setFirstResult($paginator->getOffset())
                    ->setMaxResults($paginator->getLength())->getResult();

        $this->template->count = $count;
        $this->template->articles = $clanky;
        $this->template->paginator = $paginator;
        $this->template->user = $this->getUser();
    }

    public function actionEdituj($id){
        $article = $this->em->getRepository("App\Article")->find($id);
        $this->template->obrazky = $article->obrazky;
        $this->template->id = $id;
 
        if (!$article) {
           $this->error('Příspěvek nebyl nalezen');
        }

        $this->template->coments = $article->getComents();

        //idecko pro pozdejsi mazani komentů
        $session = $this->getSession()->getSection('section');
        $session->id = $id;

        $this['clanekForm']->setDefaults(array(
            'title' => $article->title,
            'obsah' => $article->text
        ));
    }

    public function actionSmazKoment($id){

        $coment = $this->em->getRepository("App\Coment")->find($id);
        $editId = $this->getSession('section')->id;

        if($coment){
            $this->em->remove($coment);
            $this->em->flush();
            $this->flashMessage('Komentář byl smazán.');
            $this->redirect('Clanky:edituj',$editId);
        }    
    }
}