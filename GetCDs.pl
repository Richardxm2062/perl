#!/usr/bin/perl;

$stock_id=$ARGV[0];
chomp($stock_id);
system(" wget -O w".$stock_id." http://finance.sina.com.cn/realstock/company/".$stock_id."/nc.shtml ");


open (file,"< w".$stock_id) || die"can't open the file";
@data = <file>;
close(file);

open(file1,">allCDs.gtf");

foreach $L (@data){
	@s = split(/\s+/,$L);
	if($s[2] eq "CDS"){
		#print("$s[9]");
		@ss = split(/"/,$s[9]);
		print file1 ("$ss[1],$s[3],$s[4]\n");
	}
}


close(file1);


