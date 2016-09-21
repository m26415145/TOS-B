beliUSD=`curl -s http://bankmandiri.co.id | grep USD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`
jualUSD=`curl -s http://bankmandiri.co.id | grep USD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`
beliSGD=`curl -s http://bankmandiri.co.id | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f3`
jualSGD=`curl -s http://bankmandiri.co.id | grep SGD -A2 | cut -d">" -f2 | cut -d"<" -f1 | xargs | cut -d" " -f2`

echo `date` "|" $jualUSD "|" $beliUSD>> /home/m26415145/tos-b/mandiriUSD.txt
echo `date` "|" $jualSGD "|" $beliSGD>> /home/m26415145/tos-b/mandiriSGD.txt

