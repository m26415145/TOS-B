 beli='http://bankmandiri.co.id/ | grep USD -A2 | cu
t -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2'
jual='http://bankmandiri.co.id/ | grep USD -A2 | cu
t -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3'
echo $beli
echo $jual

