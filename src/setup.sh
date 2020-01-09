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

cp phpcs-pre-commit-hook/src/pre-push .git/hooks/pre-push
chmod +x .git/hooks/pre-push

if [ "$PRE_COMMIT_EXISTS" = 0 ];
then
    echo "Pre-commit git hook is installed!"
else
    echo "Pre-commit git hook is updated!"
fi