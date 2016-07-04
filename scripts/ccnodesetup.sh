wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/first.txt  -O /tmp/first.txt
wget https://raw.githubusercontent.com/boobalana/bbrepo1/master/final.txt -O /tmp/final.txt
##Assigning variable to construct and update key and key-value
value1=`cat /tmp/first.txt`
value2=`cat /tmp/final.txt`



echo $value1`cat /etc/opscode/orgchef-validator.pem`$value2 | bash
