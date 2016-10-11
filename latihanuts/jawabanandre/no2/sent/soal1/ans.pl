#!/usr/bin/perl
$harga=`grep "<td>100</td>" source.php | cut -d">" -f42 | cut -d"<" -f1`;
$harga =~ s/\.//g;
$format=`\(date +%c\)`;
chomp($format);
print "Harga emas pada saat ini $format adalah: $harga";
