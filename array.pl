#!usr/bin/perl 

@array = ();
for $i(0..99999){
    $array[$i][0] = 0;
    $array[$i][1] = 1;
}


for $i(0..99999){
    print$array[$i][0],$array[$i][1];
    print "\n";
}

system 'pause';