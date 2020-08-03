open(DATA, "./bme.gtf");
@lines = <DATA>;
foreach $i (@lines){
@eachItem = split(/\s/, $i);
if(@eachItem[2] eq "CDS"){
	$res = @eachItem[9] . @eachItem[3] . "," . @eachItem[4];
	print "$res \n";
}
}
close(DATA);