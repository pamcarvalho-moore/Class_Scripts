#!/bin/bash
#SBATCH  --job-name=class_test
#SBATCH  --output=ct_output.slurm
#SBATCH --nodes=4
#SBATCH --tasks-per-node=32
#SBATCH --time=00:00:10

module load blast/2.13.0+bin

makeblastdb -i Saccha_genome.fna -dbtype nucl -parse_seqids -out Saccha_genome.fna -title "Saccha_genome.fna db"

