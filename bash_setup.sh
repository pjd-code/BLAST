#!/usr/bin/env bash
#
#clean up the Colab environment
cd /content/sample_data
rm *.csv *.md *.json
#
#change dirctory to /bin and retrive the BLAST executables
cd /bin
wget https://ftp.ncbi.nlm.nih.gov/blast/executables/LATEST/ncbi-blast-2.12.0+-x64-linux.tar.gz -P /bin/
#
#unzip the file
tar zxvpf ncbi-blast-2.12.0+-x64-linux.tar.gz
#
#add the blast executables to $PATH this path is specific to COLAB and will vary by operating system
%env PATH=$PATH:/bin/ncbi-blast-2.12.0+/bin/:/usr/local/nvidia/bin:/usr/local/cuda/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/tools/node/bin:/tools/google-cloud-sdk/bin:/opt/bin
echo Setup Complete!
