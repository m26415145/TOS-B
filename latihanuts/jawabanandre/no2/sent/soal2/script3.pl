#!/usr/bin/perl
open FILE, "bestbooks2.txt" or die "No file found";
open(my $fh, '>', 'my_bestbooks3.txt');
while($str=<FILE>)
{
  #print $str;
  $str =~ s/""/##/g;
  $str =~ s/"//g;
  $str =~ s/##/"/g;
  print $fh $str;
}
