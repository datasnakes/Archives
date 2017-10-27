#PBS -S /bin/bash
#PBS -m bea
#PBS -M rgilmore@umc.edu
#PBS -l select=8:ncpus=1:mem=16gb -l place=free
#PBS -l cput=24:00:00
#PBS -l walltime=32:00:00
#PBS -N robupload
#PBS -o /work2/vallender/GPCR_Orthologs/GPCR-Orthologs-Project/CODE/Lib/Log/robupload.o${PBS_JOBID}
#PBS -e /work2/vallender/GPCR_Orthologs/GPCR-Orthologs-Project/CODE/Lib/Log/robupload.e${PBS_JOBID}
#PBS -j oe
cd ${PBS_O_WORKDIR}
rm /work2/vallender/GPCR_Orthologs/GPCR-Orthologs-Project/CODE/1_Databases/NCBI_Data/refseq/release/vertebrate_mammalian/robupload.o*
rm /work2/vallender/GPCR_Orthologs/GPCR-Orthologs-Project/CODE/1_Databases/NCBI_Data/refseq/release/vertebrate_mammalian/robupload.e*
mpiexec python /work2/vallender/GPCR_Orthologs/GPCR-Orthologs-Project/CODE/1_Databases/multi_dbupload.py
echo "end"