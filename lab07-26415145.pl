#!/usr/bin/perl

sub greet{

 if (@array==0) {
  print "Hai @_, you're the first person\n";
 }
 else{
  print "Hai @_, I've seen ";
  foreach (@array){
    print "$_ ";
  }
  print "\n";
 }
 push(@array,@_);
}

&greet("Fred");
&greet("Barney");
&greet("Wilma");
