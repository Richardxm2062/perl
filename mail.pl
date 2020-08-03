#!/urs/bin/perl

print "Please input the email.\n";
$mail=<STDIN>;

if ($mail =~/w{3}\..@./){
    if($mail =~/com/){
        print "This is a email adress!\n";
    }
}
else{
    print"This is not a email adress!\n";
}