#! /usr/bin/bash

# pip install nbconver pipreqs

file_name=$1

jupyter nbconvert --output-dir="./req" --to script "$file_name"

cd "./req"

query="%matplotlib inline"
replacement="# %matplotlib inline"
sed -i "s/$query/$replacement/" datathon.py

pipreqs # this is the command to generate requirements.txt file

mv ./requirements.txt ../
cd ..
rm -rf req

# pip uninstall nbconver pipreqs