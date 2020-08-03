#!/usr/bin/perl;

$dir = "ref_rm";
@fs;
@fstr;
@siz;

$avg=0;

opendir(DIR,$dir) or die;
@fs = readdir(DIR);

for($i=0;$i<@fs;$i++){
	if(($fs[$i] ne ".") &&($fs[$i] ne "..")){
		@fstr = stat ($dir."/".$fs[$i]);
		 print $fstr[7]."\n"; #die();
		$siz[$i] = $fstr[7];		
		$avg+=$fstr[7];
	}
}

$avg/=@siz;
$s=0;

for($i=0;$i<@siz;$i++){
	$s+=($siz[$i]-$avg)**2;
}
$s/=@siz;
print("avg=$avg\nS=$s\n");



