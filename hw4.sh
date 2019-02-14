DATAFILE=""

unzip -p ${DATAFILE} |
    head -n1 |
    tr ',' '\n' |
    nl > column_index.txt
    
unzip -p ${DATAFILE} |
    cut -d , -f1-61 |
    awk '{ print length }' |
    sort -n -r |
    head -n 1 > bicycle.csv > maxchars.txt

unzip -p ${DATAFILE} |
    cut -d , -f1-61 |
    grep -i 'bicycle' > bicycle.csv
	 
unzip -p ${DATAFILE} |
    cut -d , -f 18 |
    sort -n |
    awk 'NF' |
    uniq > funding_agency_set.txt

transaction_description=8
total_obligation=25

unzip -p ${DATAFILE} |
    cut -d , -f${transaction_description},${total_obligation} |
    sort -n -r |
    head -n 3 > largest.csv
    
