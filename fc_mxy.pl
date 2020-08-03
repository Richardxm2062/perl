#!/usr/bin/perl

$string = <STDIN>;
chomp($string);
@array = split(/\s/,$string);
$n = 0;
$sum1 = 0;
$sum2 = 0;
$arverge = 0;


foreach $loop_var1 (@array){
    $sum1 += $loop_var;
    $n++;
}

$average = $sum/$n;

foreach $loop_var2 (@array){
    $sum2 += ($loop_var2 - $average)**2; 
}

$std = sqrt($sum2/$n);
print $std;
print "\n";
system 'pause'