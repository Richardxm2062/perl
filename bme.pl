#!/urs/bin/perl

open(IN,"<bme.gtf") or die "Can not open the IN!";
@array = <IN>;
close(IN);
open(OUT,">>result.txt") or die "Can not open the OUT";

foreach $line (@array){
    @array2 = split(/\s+/,$line);
    if (@array2[2]=="CDS"){
        print OUT ("@array2[9]£¬@array2[3]£¬@array2[4]\n");
    }

}
close(OUT);
system 'pause';