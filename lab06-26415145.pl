#!/usr/bin/perl

chomp(@input=<STDIN>);
@input = reverse sort(@input);
foreach $a (@input){
 print "$a\n";
}
