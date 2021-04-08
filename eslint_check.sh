#!/bin/bash

cd ari
echo $(pwd)
docker run -it --rm -v $(pwd):/data cytopia/eslint "/src/**" --ignore-pattern 'assets' --ignore-pattern 'vendors' -o error.log --quiet
echo "pass point 1"
cat error.log
