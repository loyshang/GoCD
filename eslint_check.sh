#!/bin/bash
dir=$(pwd)

docker run -it --rm -v $(pwd):/data cytopia/eslint "../ari/src/**" --ignore-pattern 'assets' --ignore-pattern 'vendors' -o error.log --quiet
grep "errors" error.log >> test.txt
cat test.txt
