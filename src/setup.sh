#!/bin/sh

if [ -e .git/hooks/pre-push ];
then
    PRE_COMMIT_EXISTS=1
else
    PRE_COMMIT_EXISTS=0
fi

if [ ! -d .git/hooks ]; then
  mkdir -p .git/hooks
fi

cp vendor/stevenash/phpcd-pre-push-hook/src/pre-push .git/hooks/pre-push
chmod +x .git/hooks/pre-push

if [ "$PRE_COMMIT_EXISTS" = 0 ];
then
    echo "Pre-push git hook is installed!"
else
    echo "Pre-push git hook is updated!"
fi
