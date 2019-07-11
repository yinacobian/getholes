What we need is a perl script to do the following: 

1. Read mpileup file, we only need columns 1,2, 3 and 4 

  column 1 is the reference genome name
  column 2 is the position in the reference genome
  column 3 is the nucleotide in the reference genome
  column 4 is the coverage in that position
  column 5 snps
  column 6 qualities
  
2. Define holes as regions with more than 100 continous zeros

3. Name the holes regions

4. Output a table with the holes regions
holename  start end length
refgenome-hole1 3504475 3509484 5009

5. Output a fasta with the holes from the reference genome
>holename
ATGCCGTGCCC
