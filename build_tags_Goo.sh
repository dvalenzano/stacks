
#!/bin/bash

ROOT=$HOME
src=$ROOT/shared/personal/DValenzano/stacks/samples
db=NfGo_radtags

#
# Create database
#

mysql -e "create database $db"
mysql $db < /usr/local/share/stacks/sql/stacks.sql

#
# Run the pipeline
#

batch_id=11
date=2013-09-15
desc="Nfur crossG_MPI-AGE_Go"

nice -n 19 denovo_map.pl -m 3 -M 3 -n 2 -T 36 -B $db -b $batch_id -a $date -D "$desc" \
  -o ~/../../../local2/Go_stacks \
  -p $src/G/G_F04.fq_1 \
  -p $src/G/G_M03.fq_1 \
  -r $src/G/G016.fq \
  -r $src/G/G018.fq \
  -r $src/G/G019.fq \
  -r $src/G/G027.fq \
  -r $src/G/G037.fq \
  -r $src/G/G038.fq \
  -r $src/G/G047.fq \
  -r $src/G/G050.fq \
  -r $src/G/G051.fq \
  -r $src/G/G054.fq \
  -r $src/G/G060.fq \
  -r $src/G/G064.fq \
  -r $src/G/G080.fq \
  -r $src/G/G082.fq \
  -r $src/G/G083.fq \
  -r $src/G/G086.fq \
  -r $src/G/G090.fq \
  -r $src/G/G096.fq \
  -r $src/G/G102.fq \
  -r $src/G/G105.fq \
  -r $src/G/G110.fq \
  -r $src/G/G112.fq \
  -r $src/G/G113.fq \
  -r $src/G/G116.fq \
  -r $src/G/G118.fq \
  -r $src/G/G120.fq \
  -r $src/G/G121.fq \
  -r $src/G/G125.fq \
  -r $src/G/G130.fq \
  -r $src/G/G136.fq \
  -r $src/G/G146.fq \
  -r $src/G/G147.fq \
  -r $src/G/G148.fq \
  -r $src/G/G151.fq \
./build_tags_Goo.sh 
