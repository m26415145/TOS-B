#!/usr/bin/perl
open FILE, "bestbooks4.txt" or die "No file found";
open(my $fh, '>', 'my_bestbooks5.txt');
$counter=0;
while($str=<FILE>)
{
  #print $str;
  $str =~ s/\|/#/g;
  #print "$str \n";
  @str2 = split /#/,$str;
  $strID="";
  if($counter==0)
  {
    $str2[0] =~ s/^([a-z])/\u$1/g;
    $str2[1] =~ s/^([a-z])/\u$1/g;
    $str2[2] =~ s/^([a-z])/\u$1/g;
    $str2[3] =~ s/^([a-z])/\u$1/g;
    $strID="Id|";
  }
  else
  {
    $str2[0] =~ s/(\w+)/\u$1/g;
    $str2[0] =~ s/'([A-Z])/'\l$1/g;
    $str2[0] =~ s/Of/of/g;
    $str2[0] =~ s/ The/ the/g;
    $str2[0] =~ s/And/and/g;
    $str2[1] =~ s/(\w+)/\u$1/g;
    $strtemp=$str2[1];
    $strtemp =~ s/ //g;
    $strID = substr($strtemp,0,3);
    $strtemp = $str2[2];
    $strtemp =~ s/ //g;
    $strtemp2 = substr($strtemp,0,4);
    #print $strID;
    $strID="$strID$strtemp2|";
  }
  $strHehe=join("|",@str2);
  
  print $fh "$strID$strHehe";
  #print $fh $str;
  $counter=$counter+1;
}
