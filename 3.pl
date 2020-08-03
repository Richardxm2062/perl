#!/usr/bin/perl 
$word = <STDIN>;
@array_final = split(/\s/,$word);
foreach $localvar (@array_final){
    if ($localvar = "love"){
        print "Found the word 'love' \n"
    }
}