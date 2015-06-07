#!/bin/bash

ROOT=$HOME
src=$ROOT/../local/home/DValenzano/shared/personal/DValenzano/stacks/samples
#src=$ROOT/local/home/DValenzano/shared/personal/DValenzano/stacks/samples
#src=$ROOT/shared/personal/DValenzano/stacks/samples
db=NfAAo_radtags

#
# Create database
#

mysql -e "create database $db"
mysql $db < /usr/local/share/stacks/sql/stacks.sql

#
# Run the pipeline
#

batch_id=12
date=2013-10-09
desc="Nfur crossAA_MPI-AGE_AAo"

nice -n 19 denovo_map.pl -m 3 -M 3 -n 2 -T 36 -B $db -b $batch_id -a $date -D "$desc" \
  -o /local2/AAo_stacks \
  -p $src/AA/AA_F02.fq_1 \
  -p $src/AA/AA_M01.fq_1 \
  -r $src/AA/1AA2F0010.fq \
  -r $src/AA/1AA2F0012.fq \
  -r $src/AA/1AA2F0013.fq \
  -r $src/AA/1AA2F0021.fq \
  -r $src/AA/1AA2F0028.fq \
  -r $src/AA/1AA2F0063.fq \
  -r $src/AA/1AA2F0101.fq \
  -r $src/AA/1AA2F0102.fq \
  -r $src/AA/1AA2F0103.fq \
  -r $src/AA/1AA2F0104.fq \
  -r $src/AA/1AA2F0105.fq \
  -r $src/AA/1AA2F0109.fq \
  -r $src/AA/1AA2F0110.fq \
  -r $src/AA/1AA2F0118.fq \
  -r $src/AA/1AA2F0124.fq \
  -r $src/AA/1AA2F0125.fq \
  -r $src/AA/1AA2F0127.fq \
  -r $src/AA/1AA2F0130.fq \
  -r $src/AA/1AA2M0001.fq \
  -r $src/AA/1AA2M0002.fq \
  -r $src/AA/1AA2M0007.fq \
  -r $src/AA/1AA2M0008.fq \
  -r $src/AA/1AA2M0009.fq \
  -r $src/AA/1AA2M0019.fq \
  -r $src/AA/1AA2M0020.fq \
  -r $src/AA/1AA2M0032.fq \
  -r $src/AA/1AA2M0038.fq \
  -r $src/AA/1AA2M0048.fq \
  -r $src/AA/1AA2M0054.fq \
  -r $src/AA/1AA2M0058.fq \
  -r $src/AA/1AA2M0068.fq \
  -r $src/AA/1AA2M0073.fq \
  -r $src/AA/1AA2M0091.fq \
  -r $src/AA/1AA2M0092.fq \
  -r $src/AA/1AA2M0093.fq \
  -r $src/AA/1AA2M0096.fq \
  -r $src/AA/1AA2M0112.fq \
  -r $src/AA/1AA2M0118.fq \
  -r $src/AA/1AA2M0120.fq \
  -r $src/AA/1AA2M0123.fq \
  -r $src/AA/1AA2M0125.fq \
  -r $src/AA/1AA2M0128.fq \
  -r $src/AA/1AA2M0129.fq \
  -r $src/AA/3AA2F0006.fq \
  -r $src/AA/3AA2F0025.fq \
  -r $src/AA/3AA2F0037.fq \
  -r $src/AA/3AA2F0055.fq \
  -r $src/AA/3AA2F0075.fq \
  -r $src/AA/3AA2F0088.fq \
  -r $src/AA/3AA2F0126.fq \
  -r $src/AA/3AA2M0005.fq \
  -r $src/AA/3AA2M0015.fq \
  -r $src/AA/3AA2M0022.fq \
  -r $src/AA/3AA2M0024.fq \
  -r $src/AA/3AA2M0026.fq \
  -r $src/AA/3AA2M0027.fq \
  -r $src/AA/3AA2M0031.fq \
  -r $src/AA/3AA2M0036.fq \
  -r $src/AA/3AA2M0041.fq \
  -r $src/AA/3AA2M0043.fq \
  -r $src/AA/3AA2M0055.fq \
  -r $src/AA/3AA2M0070.fq \
  -r $src/AA/3AA2M0080.fq \
  -r $src/AA/3AA2M0089.fq \
  -r $src/AA/3AA2M0100.fq \
  -r $src/AA/5AA2M0078.fq \
  -r $src/AA/F1AAFfam15.fq \
  -r $src/AA/F1AAFfam234.fq \
  -r $src/AA/F1AAMfam14.fq \
  -r $src/AA/F1AAMfam35.fq \
  -r $src/plate5/AA-cross/1AA2F0004.fq \
  -r $src/plate5/AA-cross/1AA2F0049.fq \
  -r $src/plate5/AA-cross/1AA2F0051.fq \
  -r $src/plate5/AA-cross/1AA2F0056.fq \
  -r $src/plate5/AA-cross/1AA2M0023.fq \
  -r $src/plate5/AA-cross/1AA2M0049.fq \
  -r $src/plate5/AA-cross/1AA2M0053.fq \
  -r $src/plate5/AA-cross/1AA2M0062.fq \
  -r $src/plate5/AA-cross/1AA2M0117.fq \
  -r $src/plate5/AA-cross/1AA2M0121.fq \
  -r $src/plate5/AA-cross/3AA2M0018.fq \
  -r $src/plate5/AA-cross/3AA2M0044.fq \
  -r $src/plate5/AA-cross/3AA2M0087.fq \
  -r $src/plate5/AA-cross/4AA2M0014.fq \
  -r $src/plate5/AA-cross/5AA2F0074.fq
