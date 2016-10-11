#!/usr/bin/perl

@array = qw(lol lol1 lol2 lol3);

splice @array,1 ,2, qw(lulz);
splice @array,1, 0, qw(top);
foreach $element (@array) {
	print $element;
}
print "\n";

foreach (1..10){
 print "this loop is $_"
}
print "\n";
