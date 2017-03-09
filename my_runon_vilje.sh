#PBS -N arctic-20km
#PBS -A mifa01hi
#PBS -l walltime=120:00:00
#PBS -l select=2:ncpus=32:mpiprocs=16:ompthreads=16:mem=29gb
#PBS -j oe
#PBS -V
datstamp=`date +%Y_%m_%d_%H_%M`
exec 1>/work/$USER/tmproms/run/arctic-20km/run.log_${datstamp} 2>&1
cd ~/metroms/apps/arctic-20km
# Load modules needed
source ../myenv.bash
source /etc/profile.d/modules.sh
module load python
#
python my_arctic20km.py
