<?php

use PHPUnit\Framework\TestCase;

class ExampleTest extends TestCase
{
    public function setUp() : void
    {
    	$this->greeting = "Hello";
    }

    public function testEcho()
    {
    	echo $this->greeting;
    }
}
