#!/bin/bash
error_limit=334

cd ari
echo $(pwd)
docker run -i --rm -v $(pwd):/data cytopia/eslint "src/**" --ignore-pattern 'assets' --ignore-pattern 'vendors' -o eslint-ari-error.log --quiet
echo "pass point 1"
grep "errors" eslint-ari-error.log | awk '{gsub(/[a-zA-Z]/, ""); print}' | awk '{split($0,a,"[(,]"); print a[2]; if(a[2]>$error_limit){exit 1}}'


#grep "errors" eslint-ari-error.log >> eslint-ari-error.txt
#awk '{gsub(/[a-zA-Z]/, ""); print}' eslint-ari-error.txt | awk '{split($0,a,"[(,]"); print a[2]; if(a[2]>$error_limit){exit 1}}'
