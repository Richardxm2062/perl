#!/usr/bin/perl
$input = <STDIN>;
if ($input=~/[0-9]\.[0-9]/){       # .需要转义
    print "This is a decimals!";
}

else {
    print "This is not a decimals!";
}