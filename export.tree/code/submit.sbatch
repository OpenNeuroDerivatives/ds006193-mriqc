#!/bin/bash -x
#SBATCH --account=icei-hbp-00000000004
#SBATCH --mail-user=f.hoffstaedter@fz-juelich.de
#SBATCH --mail-type=END
#SBATCH --job-name=mriqc_ds006193
#SBATCH --output=logs/ds006193_mriqc-out.%j
#SBATCH --error=logs/ds006193_mriqc-err.%j
#SBATCH --time=24:00:00
#SBATCH --partition=scraper
#SBATCH --nodes=1

parallel --delay 0.2  -a $1 -j 25

wait

code/slurm.submit_post

