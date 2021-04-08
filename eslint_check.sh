#!/bin/bash

echo "eslint test"
echo $(pwd)
cd ../ari
echo $(pwd)
echo "pass point 1"
grep "errors" error.log >> test.txt
cat test.txt
