#!/usr/bin/perl
open FILE, "bestbooks1.txt" or die "No file found";
open(my $fh, '>', 'my_bestbooks2.txt');
while($str=<FILE>)
{
  #print $str;
  #$str =~ s/(("[0-9,]*",?)*"[0-9,]*),/\1/;
  #$str =~ s/\b("[\w\ ]*),([\w\ ]+")\b/\1|\2/g;
  $str =~ s/(",")/"|"/g;
  print $fh $str;
}
