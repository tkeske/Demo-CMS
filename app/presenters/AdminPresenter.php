<?php

/**
 * @author Tomáš Keske
 */

namespace App\Presenters;

use Nette;

class AdminPresenter extends RestrictedPresenter
{
    public function actionLogout(){
        $this->getUser()->logout(true);

        $this->flashMessage("Byl jste úspěšně odhlášen.");
        $this->redirect("Homepage:default");
    }

    public function renderDefault(){
        $this->template->user = $this->getUser();
    }
}