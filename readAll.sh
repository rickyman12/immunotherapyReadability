#!/bin/bash

# Ricky Savjani
# Readability Scores
# 1/15/2019
# rsavjani@gmail.com

# package dependencies
# readability: https://pypi.org/project/readability-lxml/ 
# html2text: https://pypi.org/project/html2text/  

# define params
urlsFile="cancer_immunotherapy2.txt"
baseName=${urlsFile%.txt}
outputDir="autoCleanTxt"
outCSV="cancerImmunotherapyReadScoresTokenized_Auto.csv"

# loop through urls to save auto clean text
count=0
while IFS='' read -r url || [[ -n "$url" ]]; 
do
	# define output name
	outFile=${outputDir}/${count}_${baseName}.txt

	# echo url
	echo ${count}: $url

	# use python readability to convert HTML from URL to just body text of URL 
	# | output to html2text to save to file with some clean up
	python -m readability.readability -u $url | html2text --ignore-emphasis --ignore-links --ignore-images --dash-unordered-list > $outFile    

	# clean up characters 
	sed -i -e 's/Title://g' $outFile # delete Title:
	sed -i -e 's/\#\# //g' $outFile  # delete ## 
	sed -i -e 's/\#//g' $outFile  # delete # 
	sed -i -e 's/  - //g' $outFile # delete bullets
	sed -i -e 's/\[[^][]*\]//g' $outFile # remove any text inside of brackets

	# rm error files
	rm -f ${outFile}*-e

	((count+=1))		
done <"$urlsFile"
