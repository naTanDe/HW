#!/bin/bash
mkdir dir_1
cd dir_1 
mkdir 1_1 1_2 1_3
cd 1_1
touch 1.txt 2.txt 3.txt 4.json 5.json
mkdir dir_1_1_1 dir_1_1_2 dir_1_1_3
ls -la
mv 1.txt dir_1_1_1; mv 4.json dir_1_1_2
