<?php


class FirstCest
{
    public function _before(AcceptanceTester $I)
    {
    }

    public function _after(AcceptanceTester $I)
    {
    }

    // tests
    public function testBadLogin(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->seeInTitle('Tomáš Keske');
        $I->see('Vítejte na blogu!');  
        $I->click('Přihlásit se');
        $I->fillField('email','tom');
        $I->fillField('pass','tom');
        $I->click('Login');
        $I->see('User \'tom\' not found.');
        $I->submitForm('#frm-loginForm', ['email' => 'tomas.keske@seznam.cz', 'pass' => 'tomas.keske@seznam.cz']);
        $I->see('User \'tomas.keske@seznam.cz\' not found.');
        $I->seeElement('.alert');
    }

    public function testLoginWorks(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->click('Přihlásit se');
        $I->submitForm('#frm-loginForm', ['email' => 'admin', 'pass' => 'admin']);
        $I->see('Administrace');
        $I->see('Články');
        $I->see('Kategorie');
        $I->see('Komentáře');
        $I->see('Uživatelé');
        $I->seeInCurrentUrl('/admin');
    }
}
