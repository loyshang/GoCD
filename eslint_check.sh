#!/bin/sh
dir=$(pwd)

docker run -it --rm -v /var/lib/go-agent/pipelines/eslint-p1:/data cytopia/eslint src/** --ignore-pattern 'assets' --ignore-pattern 'vendors' -o error.log --quiet
grep "errors" error.log >> test.txt
cat test.txt
