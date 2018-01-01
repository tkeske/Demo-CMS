<?php

/**
 * @author Tomáš Keske
 */
 
namespace App\Presenters;

use Nette;
use Nette\Application\UI\Form;

class UzivatelePresenter extends RestrictedPresenter
{

    /** @var \AddUserForm @inject */
    public $form;

    public function createComponentAddUziv(){
    	$form = $this->form->create(TRUE);
    	$form->addSubmit("submit", "Přidej uživatele");
    	$form->onSuccess[] = [$this, "addSuccess"];

    	return $form;
    }

    public function addSuccess(Form $form, $values){

        $this->flashMessage("Uživatel úspěšně přidán do systému.");
    	$this->redirect('Admin:uzivatele');
    }

    public function actionOdebrat($id){

    	if ($id){
    		$usr = $this->em->getRepository('App\User')->find($id);
    		$this->em->remove($usr);
    		$this->em->flush();

            $this->flashMessage("Uživatel byl odebrán.");
    		$this->redirect('Uzivatele:odebrat');
    	}
    }

    public function renderOdebrat(){
    	$usr = $this->em->getRepository('App\User')->findAll();
    	$this->template->usr = $usr;
    }
}