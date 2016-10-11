#!/usr/bin/perl
open FILE, "bestbooks0.csv" or die "No file found";
open(my $fh, '>', 'my_bestbooks1.txt');
while($str=<FILE>)
{
  #print $str;
  $str =~ s/\r//g;
  print $fh $str;
}
