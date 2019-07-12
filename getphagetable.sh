#!/bin/bash

#$1 is annotations table from PATRIC in tab format  

cut -f 1 $1 | uniq > ids.txt

cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | wc -l  " | paste - - > orfs.txt
cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | grep -i 'phage' | wc -l  " | paste - - > phage.txt
cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | grep -i 'hypothetical' | wc -l  " | paste - - > hypothetical.txt
cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | grep -i 'integrase' | wc -l  " | paste - - > integrase.txt
cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | grep -i 'transposase' | wc -l  " | paste - - > transposase.txt
cat ids.txt | xargs -I {id} sh -c "echo {id}; grep {id} $1 | grep -i 'mobile element' | wc -l  " | paste - - > mobile.txt

paste orfs.txt phage.txt hypothetical.txt mobile.txt integrase.txt transposase.txt | cut -f 1,2,4,6,8,10,12 > table-phagelike.tab

