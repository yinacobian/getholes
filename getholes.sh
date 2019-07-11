#!/bin/bash
#Get regions with zero coverage in the reference genomes

#bash getholes.sh genomeIDSlist fasta
#$1 database fasta id
#$2 dataset fasta id


#1. Map to reference genome

#smalt index -k 10 -s 5 $1 $1.fasta
#smalt map -x -y 0.96 -n 20 -f samsoft -o map_$1_vs_$2.samsoft $1 $2.fasta

#2. Create mpileup files with coverage
samtools view -b -T $1.fasta map_$1_vs_$2.samsoft -o map_$1_vs_$2.bam
samtools sort -O bam -T toto map_$1_vs_$2.bam -o sorted_map_$1_vs_$2.bam
samtools mpileup -d 10000000 -a --reference $1.fasta sorted_map_$1_vs_$2.bam -o mpileup_sorted_map_$1_vs_$2.tab

 
#3. Get table of regions with holes


#4. Get fasta of holes regions
