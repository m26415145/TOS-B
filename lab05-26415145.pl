#:!/usr/bin/perl
$word=<STDIN>;
chomp($word);
$number=<STDIN>;

$loop=0;
while($loop<$number){
	printf "$word";
	$loop +=1;
}
