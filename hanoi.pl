#!urs/bin/perl

sub move{
    my ($num,$begin,$end) = @_;
    $step++;
    print "The step ".$step." shift plate ".$num." from clolum ".$begin." to colum ".$end."\n";
}

sub Hanoi{
    my($num,$begin,$interim,$end) = @_;
    if ($num==1){
        move(1,$begin,$end);
    }
    else{
        Hanoi($num-1,$begin,$end,$interim);
        move($num,$begin,$end);
        Hanoi($num-1,$interim,$begin,$end);
    }
}

$n = 1;
$step = 0;
print "Input the numbers of the plates!\n";
$num = <STDIN>;
chomp($num);
Hanoi($num,'A','B','C');
system 'pause';
