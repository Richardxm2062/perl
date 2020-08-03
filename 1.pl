#!/usr/bin/perl
$a = 1;
$b = 2;
$c = $a++;
$d = ++$b;
#左++是先加再赋值，右++是先赋值再加
$e = "wo";
$e .= " shi zhu";
print "$a,$b,$c,$d\n";
print  $b <=> $a ;
print "\n";
print $e."\n";
$v1 = 10;
$v1 == 20 ? $v2 : $v3 = 13;
#选择被赋值的变量时，值只是用最后一个。比如 $v2=13:$v3=14中只有14被赋予$v2或者$v3
print "$v1,$v2,$v3"