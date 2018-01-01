<?php

class StrankovaniCest
{
    public function testStrankovani(AcceptanceTester $I)
    {
        $I->amOnPage('/');
        $I->click('Další');
        $I->seeInCurrentUrl('?page=2');
        $I->click('Další');
        $I->seeInCurrentUrl('?page=3');
        $I->click('Další');
        $I->seeInCurrentUrl('?page=4');
        $I->click('Předchozí');
        $I->seeInCurrentUrl('?page=3');
    }
}
