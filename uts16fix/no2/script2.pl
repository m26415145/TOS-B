#!/usr/bin/perl

open FILE, "ID" or die "No file found";
open(my $fh, '>', 'table.csv');
@string = 'grep
$counter=0;
while($str=<FILE>)
{
  #print $str;
  $str =~ s/"', '"/;/g;
  $str =~ s/"['"//g;
  $str =~ s/"']"//g;
  #print "$str \n";
  @str2 = split /;/,$str;
 
  print $fh join(";",@str2);
  #print $fh $str;
  $counter=$counter+1;
}



