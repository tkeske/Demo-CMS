<?php

class EditovatCest
{
    public function testKategorieArticle(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->click('Přihlásit se');
        $I->submitForm('#frm-loginForm', ['email' => 'admin', 'pass' => 'admin']);
        $I->click('Články');
        $I->click('Editovat článek');
        $I->click('Editovat článek');
        $edit = rand(1,100);
        $I->fillField('title', 'edit' . $edit);
        $I->fillField('obsah', 'obsahedit'. $edit);
        $I->selectOption('Kategorie:', 'admin');
        $I->click("Publikovat");
        $I->amOnPage('/');
        $I->see('edit'.$edit);
        $I->see('obsahedit'.$edit);
    }
}
