# Stacks - handling RadTag data
  
Here I will place all the commands required to run stacks from my vm

### Demultiplexing:
First, I demultiplexed all the output files from the sequencher, using the provided barcodes.
To do this, I use [build_samples_5_1.sh](https://github.com/dvalenzano/stacks/blob/master/build_samples_5_1.sh) and [build_samples_5_2.sh](https://github.com/dvalenzano/stacks/blob/master/build_samples_5_2.sh)

### Check if any individuals sequenced on plate 5 were already sequenced in previous plates. 
I then compare if plate5 from Oregon contains any previously sequenced individual. 
I did this with the following [this script](https://github.com/dvalenzano/Interactive-Sessions/blob/master/04-Sep-2013.py) for both cross G and cross AA.

### Building stacks tags
To generate all the necessary stacks tags, I ran from shell [build_tags_Goo.sh](https://github.com/dvalenzano/stacks/blob/master/build_tags_Goo.sh) and [build_tags_AAo.sh](https://github.com/dvalenzano/stacks/blob/master/build_tags_AAo.sh)

### Saving the genotype for genotype-phenotype matrix manipulation.
```
[root@balt-vm4-dario mysql]# export_sql.pl -D NfGo_radtags -b 11 -a geno -f ./NfGo_allgeno.xls -o xls -m gen -c -F mark=Any -F snps_l=1 -F snps_u=1 -F alle_u=4
[root@balt-vm4-dario mysql]# export_sql.pl -D NfAAo_radtags -b 12 -a geno -f ./NfAAo_allgeno.xls -o xls -m gen -c -F mark=Any -F snps_l=1 -F snps_u=1 -F alle_u=4
```
These output files then are saved as csv files.  
On [19-Nov-2013.py](https://github.com/dvalenzano/Interactive-Sessions/blob/master/19-Nov-2013.py) I start generating the phenotype-genotype matrix. 

### Converting phenotype-genotype data files into ped files
File worked on [22-Nov-2013](https://github.com/dvalenzano/Interactive-Sessions/blob/master/22-Nov-2013), where I removed F1 genotypes with less than 25% coverage.  
Next, I excluded the markers with less than 20% coverage with [24-Nov-2014.py](https://github.com/dvalenzano/Interactive-Sessions/blob/master/24-Nov-2013.py)  
With [27-Nov-2014.py](https://github.com/dvalenzano/Interactive-Sessions/blob/master/27-Nov-2013.py) I split the ped file in family-ped files, and with [27-Nov-2013_2.py](https://github.com/dvalenzano/Interactive-Sessions/blob/master/27-Nov-2013_2.py) I developed a method to infer F1 genotype based on P0 and F2 genotypes, family by family. Importantly, *this method won't be used for the genome-evolution-survival QTL paper*. For completeness, [28-Nov-2013.py](https://github.com/dvalenzano/Interactive-Sessions/blob/master/28-Nov-2013.py) takes a ped
file, splits it into families, and computes the F1 genotypes. It saves everything in the same folder. 




