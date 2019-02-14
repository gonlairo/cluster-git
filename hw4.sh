DATAFILE="/Users/rodrigo/Desktop/bash_hw4/transaction.zip"

# first question

unzip -p ${DATAFILE} |
    head -n1 |
    tr ',' '\n' |
    nl > column_index.txt
    
	 
unzip -p ${DATAFILE} |
    cut -d , -f 18 |
    sort -n |
    awk 'NF'
    uniq > funding_agency_set.txt

wc -l funding_agency_set.txt
    
