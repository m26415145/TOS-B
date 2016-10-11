#!/usr/bin/perl
use strict;
use warning;

open($fh, '<:encoding(UTF-8)','nama.txt') or die "Couldnt open file $!";

while($row = <$fh>){
 chomp $row;
 ($firstname,$lastname) = split /,/,$row;
 $hash{$firstname} = $surname;
}

while(($key, $value) = each $hash) {
 print "$key => $value\n";
}
