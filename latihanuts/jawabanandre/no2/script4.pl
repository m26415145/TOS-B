#!/usr/bin/perl
open FILE, "bestbooks3.txt" or die "No file found";
open(my $fh, '>', 'my_bestbooks4.txt');
$counter=0;
while($str=<FILE>)
{
  #print $str;
  $str =~ s/\|/#/g;
  #print "$str \n";
  @str2 = split /#/,$str;
  if($counter==0)
  {
    $str2[0] =~ s/^([a-z])/\u$1/g;
    $str2[1] =~ s/^([a-z])/\u$1/g;
    $str2[2] =~ s/^([a-z])/\u$1/g;
    $str2[3] =~ s/^([a-z])/\u$1/g;
  }
  else
  {
    $str2[0] =~ s/(\w+)/\u$1/g;
    $str2[0] =~ s/'([A-Z])/'\l$1/g;
    $str2[0] =~ s/Of/of/g;
    $str2[0] =~ s/ The/ the/g;
    $str2[0] =~ s/And/and/g;
    $str2[1] =~ s/(\w+)/\u$1/g;
  }
  print $fh join("|",@str2);
  #print $fh $str;
  $counter=$counter+1;
}
