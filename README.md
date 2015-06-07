#stacks
======
Here I will place all the commands required to run stacks from my vm

##Demultiplexing:
First, I demultiplexed all the output files from the sequencher, using the provided barcodes.
To do this, I use:
build_samples_5_1.sh
build_samples_5_2.sh

##Check if any individuals sequenced on plate 5 were already sequenced in previous plates. 
I then compare if plate5 from Oregon contains any previously sequenced individual. 
I did this with the following [this script](https://github.com/dvalenzano/Interactive-Sessions/blob/master/04-Sep-2013.py) for both cross G and cross AA.

##Build stacks tags
To generate all the necessary stacks tags, I ran from shell [build_tags_Goo.sh](https://github.com/dvalenzano/stacks/blob/master/build_tags_Goo.sh) and [build_tags_AAo.sh](https://github.com/dvalenzano/stacks/blob/master/build_tags_AAo.sh)

##Saving the genotype files to excel files
#\begin-code
=[root@balt-vm4-dario mysql]# export_sql.pl -D NfGo_radtags -b 11 -a geno -f ./NfGo_allgeno.xls -o xls -m gen -c -F mark=Any -F snps_l=1 -F snps_u=1 -F alle_u=4=
=[root@balt-vm4-dario mysql]# export_sql.pl -D NfAAo_radtags -b 12 -a geno -f ./NfAAo_allgeno.xls -o xls -m gen -c -F mark=Any -F snps_l=1 -F snps_u=1 -F alle_u=4=
#\end-code


