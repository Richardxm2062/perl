#!/usr/bin/perl

$dir = "./ref_rm";
opendir(DIR,$dir);
@dir = readdir DIR;
@data;
@array;
$n=0;
$sum;


foreach $file (@dir){
    if ($file ne "." && $file ne "..") {
        @array=stat($dir.'/'.$file);
        print "@array[7]\n";
        @data[$n]=@array[7];
        $n+=1;
        $sum+=@array[7];
        close(Myfile);
    }
}

$avg = $sum/$n;
print "avg si ".$avg."\n";
print "\n";