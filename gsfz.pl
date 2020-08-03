#!/urs/bin/perl

$rili = "rili.txt";
open(File1,$rili) or die("Can't open the file!");
@rili = <File1>;
print @rili;
system 'pause'; 