#!/usr/bin/perl 

print "Input the string!::\n";
$input=<STDIN>;
chomp($input);


if($input =~/\s/){
    print"ccc\n";
    $a = $&;
    print "A".$a."B";
}
else{
    if ($input=~/\s/){
        print"1111\n";
    }
}
