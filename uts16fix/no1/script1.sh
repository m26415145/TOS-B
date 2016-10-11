#!/bin/bash
cek=`curl -s "http://www.elevenia.co.id/prd-apple-iphone-7-plus-black-128gb-garansi-6242166" | grep Harga -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f8`

echo  `date` "| Harga Akhir = Rp "$cek>>/home/m26415145/hasil.txt;
a=15.000.000
cek = sed 's/\.//g"
if [ $cek -lt $a ]
then
 echo "Harga Akhir saat ini berada dibawah Rp15.000.000" | mail -s "Harga akhir dibawah Rp15.000.000" m26415145@john.petra.ac.id
fi
