<?php

use Nette\Application\UI\Form;
use App\User;

class AddUserForm
{

    /**
     * @inject
     * @var \Kdyby\Doctrine\EntityManager
     */
    public $EntityManager;

    public function __construct(\Kdyby\Doctrine\EntityManager $em){
        $this->EntityManager = $em;
    }

    public function create($checkbox = NULL)
    {
        $form = new Form;
        $form->setRenderer(new \Bs3FormRenderer());

        $form->addText('email', 'E-mail:')->addRule(Form::FILLED, "Pole musí být vyplněno.")
                                            ->addRule(Form::EMAIL, "Zadejte prosím platný email.");

        $form->addPassword('pass', 'Heslo:')->addRule(Form::FILLED, "Pole musí být vyplněno.");

        $form->addPassword('pass2', 'Heslo znovu:')->addRule(Form::FILLED, "Pole musí být vyplněno.")
                                                    ->addRule(Form::EQUAL, "Hesla se neshodují.", $form['pass']);

        if ($checkbox){
            $form->addCheckbox('admin', 'Je administrátorem');
        }

        $form->onValidate[] = [$this, 'registerFormValidate'];
        $form->onSuccess[] = [$this, 'registerFormSuccess'];

        return $form;
    }

    public function registerFormValidate(Form $form, $values){
        $r = $this->EntityManager->getRepository('App\User')->findBy(['email' => $values['email']]);

        if ($r){
            $form->addError("Tento email je již registrován.");
        }
    }

    public function registerFormSuccess(Form $form, $values){

        $user = new User;
        $user->email = $values["email"];
        $user->password = password_hash($values["pass2"], PASSWORD_DEFAULT);

        if (isset($values["admin"])){
            $user->role = "admin";
         } else {
            $user->role = "user";
         }

        $this->EntityManager->persist($user);
        $this->EntityManager->flush();
    }
}