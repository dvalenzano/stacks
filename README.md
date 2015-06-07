#stacks
======
Here I will place all the commands required to run stacks from my vm

##Demultiplexing:
First, I demultiplexed all the output files from the sequencher, using the provided barcodes.
To do this, I use:
build_samples_5_1.sh
build_samples_5_2.sh

##Check if any individuals sequenced on plate 5 were already sequenced in previous plates. 
I then compare if the new plate 
>plate5 from Oregon
contains any previously sequenced individual. 
I did this with the following [this script](https://github.com/dvalenzano/Interactive-Sessions/blob/master/04-Sep-2013.py) for both cross G and cross AA

