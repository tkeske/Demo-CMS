<?php

class KomentareCest
{
    public function testKomentare(AcceptanceTester $I)
    {
        $I->amOnPage('/zobraz/clanek/Title55/');
        
        $rand = rand(1,100);

        $I->submitForm('#frm-komentareForm', 
            ['nick' => 'admin', 'obsah' => 'Toto je testovací komentář'.$rand]);

        $I->amOnPage('/zobraz/clanek/Title55/');

        $I->dontSee('Toto je testovací komentář'.$rand);

        $I->amOnPage('/');
        $I->click('Přihlásit se');
        $I->submitForm('#frm-loginForm', ['email' => 'admin', 'pass' => 'admin']);
        $I->amOnPage('/admin');
        $I->click('Komentáře');
        $I->see('Toto je testovací komentář'.$rand);
    }
}
