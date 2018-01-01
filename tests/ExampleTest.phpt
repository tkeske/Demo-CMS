<?php

namespace Test;

use Nette;
use Tester;
use Tester\Assert;

$container = require __DIR__ . '/bootstrap.php';


class ExampleTest extends Tester\TestCase
{
	private $container;


	public function __construct(Nette\DI\Container $container)
	{
		$this->container = $container;
	}


	public function setUp()
	{
		//dump($this->container->getService('nette.database.default'));
	}


	public function testSomething()
	{

		// z DI kontejneru, který vytvořil bootstrap.php, získáme instanci PresenterFactory
		$presenterFactory = $this->container->getByType('Nette\Application\IPresenterFactory');

		// a vyrobíme presenter Sign
		$presenter = $presenterFactory->createPresenter('Homepage');

		$presenter->autoCanonicalize = false;

		$request = new Nette\Application\Request('Homepage', 'GET', array('action' => 'default'));
		$response = $presenter->run($request);

		Assert::type('Nette\Application\Responses\TextResponse', $response);
		Assert::type('Nette\Bridges\ApplicationLatte\Template', $response->getSource());

		$html = (string) $response->getSource();

		$dom = @Tester\DomQuery::fromHtml($html);

		Assert::true($dom->has('html'));
		Assert::true($dom->has('title'));
		Assert::true($dom->has('h1'));
	}
}


$test = new ExampleTest($container);
$test->run();
