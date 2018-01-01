<?php

class KategorieCest
{
    public function testKategorieArticle(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->click('Přihlásit se');
        $I->submitForm('#frm-loginForm', ['email' => 'admin', 'pass' => 'admin']);
        $I->click('Kategorie');
        $I->click('Přidat kategorii');
        $rand = rand(1,100);
        $kategorie = "Kategorie" . $rand;
        $I->fillField('jmeno', $kategorie);
        $I->click("Přidat kategorii");
        $I->amOnPage('/admin/clanky');
        $I->click("Přidat článek");
        $I->selectOption('Kategorie:', $kategorie);
    }
}
