Last login: Sun Jun  7 17:44:08 on ttys002
dvalenzano:~ DValenzano$ cd /Volumes/group_dv/personal/DValenzano/re
reference-letters/ replaced           reviews/           
removeqs           reviewing/         
dvalenzano:~ DValenzano$ more /Volumes/group_dv/personal/DValenzano/replaced 
mv z701F.fq z701F
mv z5R18d.fq z5R18d
mv z5Y06F.fq z5Y06F
mv z7012F1.fq z7012F1
mv 1AA2F0051.fq 1AA2F0051
mv 1AA2M0117.fq 1AA2M0117
mv z1018d.fq z1018d
mv G299.fq G299
mv G262.fq G262
mv z708f2.fq z708f2
mv G212.fq G212
mv 4aa2m0014.fq 4aa2m0014
mv z711D.fq z711D
mv z5R07F.fq z5R07F
mv z5Y08F.fq z5Y08F
mv z6014F.fq z6014F
mv 1AA2M0053.fq 1AA2M0053
mv 1AA2F0056.fq 1AA2F0056
mv z104F.fq z104F
mv G104.fq G104
mv G272.fq G272
mv G172.fq G172
mv ADBELL.fq ADBELL
mv ck1005R_050812.fq ck1005R_050812
dvalenzano:~ DValenzano$ pwd
/Users/DValenzano
dvalenzano:~ DValenzano$ cd /Volumes/group_dv/personal/DValenzano/
dvalenzano:DValenzano DValenzano$ ls ./
Annual-meeting-2014_template.doc	lab-website
Dropbox-backups				month-by-month
EZ_analyses_dirs			papers
Letter_WORD_age-mpg_mac.dotx		presentations
R					protocols
README					random_forestqtl
README.org				reference-letters
Reisekostenabrechnung.pdf		removeqs
SAB_visits				replaced
Shuhei					reviewing
Stanford_files				reviews
Valenzano_PhDThesis.pdf			shipping
WES					stacks
ZIM2015					tape-only
admin					traveling
collaboration-Reznick-Fraser		unilinker
grants					website
lab-members
dvalenzano:DValenzano DValenzano$ cd stacks/
dvalenzano:stacks DValenzano$ ls ./
AAnew.txt		build_samples_5.sh	build_tags_Goo.sh
AAnew2-2.txt		build_samples_5_1.sh	build_tags_Goo.sh~
AAnew2.txt		build_samples_5_2.sh	concatenate.sh
AAo_stacks		build_samples_5_3.sh	lst
AAold.txt		build_samples_5_4.sh	lst2
Go_stacks		build_tags_AAn.sh	mv_lst.sh
NfAAo_hom_geno.xls	build_tags_AAo.sh	pop-stacks
NfGo_export_hp.tsv	build_tags_Gn.sh	runmepop-P0_01.sh
NfGo_hom_geno.xls	build_tags_Go.sh	samples
barcodes		build_tags_Go.sh~
dvalenzano:stacks DValenzano$ ls -lat ./
total 51782
drwx------  1 DValenzano  staff     16384 Jun  7 18:06 ..
drwx------  1 DValenzano  staff     16384 Jan  9 18:56 pop-stacks
drwx------  1 DValenzano  staff     16384 Sep  9  2014 .
-rwx------  1 DValenzano  staff       663 Sep  9  2014 runmepop-P0_01.sh
-rwx------@ 1 DValenzano  staff     21508 Jul  1  2014 .DS_Store
drwx------  1 DValenzano  staff     16384 Jun 16  2014 Go_stacks
drwx------  1 DValenzano  staff     16384 Jun 16  2014 AAo_stacks
-rwx------  1 DValenzano  staff   7047168 Jan  2  2014 NfAAo_hom_geno.xls
-rwx------  1 DValenzano  staff  19239936 Jan  2  2014 NfGo_hom_geno.xls
drwx------  1 DValenzano  staff     16384 Dec 30  2013 samples
-rwx------  1 DValenzano  staff       893 Dec 30  2013 build_samples_5_4.sh
-rwx------  1 DValenzano  staff      6054 Dec 30  2013 build_samples_5_3.sh
-rwx------  1 DValenzano  staff       121 Dec 20  2013 NfGo_export_hp.tsv
-rwx------  1 DValenzano  staff      3606 Dec 20  2013 mv_lst.sh
-rwx------  1 DValenzano  staff      1797 Dec 20  2013 lst2
-rwx------  1 DValenzano  staff      1635 Dec 18  2013 lst
-rwx------  1 DValenzano  staff      3183 Nov  9  2013 build_tags_AAo.sh
-rwx------  1 DValenzano  staff      5748 Nov  9  2013 build_tags_Goo.sh
-rwx------  1 DValenzano  staff      2297 Sep 19  2013 build_tags_AAn.sh
-rwx------  1 DValenzano  staff      5741 Sep 15  2013 build_tags_Goo.sh~
-rwx------  1 DValenzano  staff      5761 Sep 15  2013 build_tags_Go.sh
-rwx------  1 DValenzano  staff      5761 Sep 13  2013 build_tags_Go.sh~
-rwx------  1 DValenzano  staff      4096 Sep  9  2013 ._.DS_Store
-rwx------  1 DValenzano  staff      4687 Sep  5  2013 build_tags_Gn.sh
-rwx------  1 DValenzano  staff      1143 Aug 30  2013 AAold.txt
-rwx------  1 DValenzano  staff       195 Aug 30  2013 AAnew.txt
-rwx------  1 DValenzano  staff       784 Aug 30  2013 AAnew2-2.txt
-rwx------  1 DValenzano  staff       389 Aug 30  2013 AAnew2.txt
-rwx------  1 DValenzano  staff      2713 Aug 30  2013 concatenate.sh
-rwx------  1 DValenzano  staff      7093 Aug 16  2013 build_samples_5_2.sh
drwx------  1 DValenzano  staff     16384 Aug 15  2013 barcodes
-rwx------  1 DValenzano  staff      7000 Aug 14  2013 build_samples_5_1.sh
-rwx------  1 DValenzano  staff      6985 Aug 14  2013 build_samples_5.sh
dvalenzano:stacks DValenzano$ more ./build_tags_Goo.sh
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
dvalenzano:stacks DValenzano$ more ./build_tags_AA
build_tags_AAn.sh  build_tags_AAo.sh  
dvalenzano:stacks DValenzano$ more ./build_tags_AAo.sh 
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
dvalenzano:stacks DValenzano$ emacs ./build_tags_AAo.sh 

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

nice -n 19 denovo_map.pl -m 3 -M 3 -n 2 -T 36 -B $db -b $batch_id -a $date -D "\
$desc" \
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
-uu-:---F1  build_tags_AAo.sh   Top L1     (Shell-script[bash])-----------------
Indentation setup for shell type bash
