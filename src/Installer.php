<?php
namespace PHPCodeChecker;

class Installer
{
    public static function postInstall()
    {
        system('sh vendor/stevenash/phpcd-pre-push-hook/src/setup.sh');
//        if (strtoupper(substr(PHP_OS, 0, 3)) === 'WIN') {
//
//        } else {
//            system('sh vendor/wickedreports/phpcs-pre-commit-hook/src/setup.sh');
//        }
    }
}