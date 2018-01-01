<?php

/**
 * @author Tomáš Keske
 */

namespace App\Presenters;

use Nette;
use App\User;
use Nette\Application\UI\Form;


class RegistrationPresenter extends PublicPresenter
{
    /** @var \AddUserForm @inject */
    public $form;

    protected function createComponentRegisterForm(){

        $form = $this->form->create();
        $form->addSubmit("submit", "Registrovat");

        $form->onSuccess[] = [$this, "regSuccess"];

        return $form;
    }

    public function regSuccess(Form $form){

        $this->flashMessage('Byl jste úspěšně registrován.');
        $this->redirect('Homepage:default');
    }
}