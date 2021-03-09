#!/bin/bash
randomfunc() {
random=$(shuf -i 10000-50000 -n 1) 
}

randomfunc
zip -P rockyou $random.zip cutecat.jpg


for i in {1..153}
do
firstrandom=$random
randomfunc
zip -P $random $random.zip $firstrandom.zip
rm $firstrandom.zip
done



