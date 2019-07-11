
1. Read mpileup file, column 1 is the nucleotide in the reference genome, column 2 
2. Define holes as regions with more than 100 continous zeros
3. Name the holes regions
4. Output a table with the holes regions
holename  start end length
refgenome-hole1 3504475 3509484 5009
5. Output a fasta with the holes from the reference genome
>holename
ATGCCGTGCCC
