#!urs/bin/perl

@array = (1,1,3,4,6);
$num = 10;
$num /= @array;#直接除以数组的长度
print ($num."\n");