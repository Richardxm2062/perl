#!/urs/bin/perl 

@wf = (7,9,10,5,8,4,2,1,6,3,7,9,10,5,8,4,2); #Weighted factor
@cc = (1,0,x,9,8,7,6,5,4,3,2); #check code
$id_card; #identity card
$sum = 0;
$remainder = 0;


print "Please input the identity card!\n";
$id_card = <STDIN>;
chomp($id_card);

if (($id_card =~/\s/) or ($id_card =~/\W/) or (length($id_card) != 18)){
    print "This is not an identity card!\n";
}
else{
    @id_card = split(//,$id_card);
    for ($i=0;$i<=16;$i++){
        $sum += @id_card[$i]*@wf[$i];
    }
    $remainder = $sum%11;
    print "The remainder is".$remainder."\n";
    if (@cc[$remainder] == @id_card[17]){
        print "This is a correct identity card!\n";
    }
    else{
        print"This identity card is illegal!\n"
    }

}