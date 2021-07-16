#!/bin/bash -x
./vendor/bin/phpunit -c phpunit.xml --coverage-clover reports/coverage.xml --coverage-html=reports
