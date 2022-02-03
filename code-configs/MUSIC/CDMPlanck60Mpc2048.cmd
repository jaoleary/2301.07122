#!/bin/bash
#SBATCH -J IC_P60_2048
#SBATCH -o ./%x.%j.out
#SBATCH -e ./%x.%j.err
#SBATCH -D ./
#SBATCH --partition=fat
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=48
#SBATCH --time=06:00:00
#SBATCH --account=pn72bu

module load slurm_setup
export OMP_NUM_THREADS=$SLURM_CPUS_PER_TASK

module load fftw/3.3.8-intel-openmp
module load gsl

./MUSIC ./ConfigFiles/CDMPlanck60Mpc2048.conf

#Default:KMP_AFFINITY=granularity=thread,compact,1,0
