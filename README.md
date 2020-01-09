<h1 align="center"> phpcd-pre-push-hook </h1>

<p align="center"> phpcs-pre-push-hook.</p>


## Installing

```shell
$ composer require stevenash/phpcd-pre-push-hook -vvv
```

Or alternatively, include a dependency for `wickedreports/phpcs-pre-commit-hook` in your composer.json file manually:

    {
        "require-dev": {
            "stevenash/phpcd-pre-push-hook": "*"
        }
    }

To enable code sniff, аdd to `post-install-cmd` and `post-update-cmd` in `composer.json` installation script:

    "scripts": {
        "post-install-cmd": [
            "Stevenash\\PhpcdPrePushHook\\Installer::postInstall"
        ],
        "post-update-cmd": [
            "Stevenash\\PhpcdPrePushHook\\Installer::postInstall"
        ]
    }

## Usage

TODO

## Contributing

You can contribute in one of three ways:

1. File bug reports using the [issue tracker](https://github.com/stevenash/phpcd-pre-push-hook/issues).
2. Answer questions or fix bugs on the [issue tracker](https://github.com/stevenash/phpcd-pre-push-hook/issues).
3. Contribute new features or update the wiki.

_The code contribution process is not very formal. You just need to make sure that you follow the PSR-0, PSR-1, and PSR-2 coding guidelines. Any new code contributions must be accompanied by unit tests where applicable._

## License

MIT