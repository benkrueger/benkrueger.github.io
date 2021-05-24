#!/bin/sh
mkdir benjaminkrueger
cp *.html benjaminkrueger
cp *.pdf benjaminkrueger
cp *.css benjaminkrueger
cp *.key benjaminkrueger
rsync -a benjaminkrueger/* root@benjaminkrueger.xyz:/var/www/benjaminkrueger
rm -rf benjaminkrueger