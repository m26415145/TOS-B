#!/usr/bin/perl
open FILE, "bestbooks5.txt" or die "No file found";
open(my $fh, '>', 'my_bestbooks6.txt');
while($str=<FILE>)
{
  #print $str;
  $str =~ s/\bsex\b/fun/g;
  print $fh $str;
}
