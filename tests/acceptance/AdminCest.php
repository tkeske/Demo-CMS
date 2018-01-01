<?php

class ArticleCest
{

    public function testAddDeleteArticle(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->click('Přihlásit se');
        $I->submitForm('#frm-loginForm', ['email' => 'admin', 'pass' => 'admin']);
        $I->click('Články');
        $I->click('Přidat článek');
        $rand = rand(1,100);
        $title = "Title" . $rand;
        $obsah = "Obsah" . $rand;
        $I->fillField('title', $title);
        $I->fillField('obsah', $obsah);
        $I->click("Publikovat");
        $I->seeElement('.alert');
        $I->selectOption('Kategorie:', 'admin');
        $I->click("Publikovat");
        $I->amOnPage('/');
        $I->see($title);
        $I->see($obsah);
        $I->amOnPage('clanky/smaz/');
        $I->click('Smazat článek');
        $I->amOnPage('/');
        $I->dontSee($title);
        $I->dontSee($obsah);
    }
}
