#!urs/bin/perl 

print "Input the pssword! :\n";
$password=<STDIN>;
chomp($password);
print $password;
if ($password =~/\s/){
    print "Blank is forbidden in the password!\n";
}

elsif ($password =~/\W/){
    print "Some symbols are forbidden in the password!\n";
}

else{
    if ($password =~/^[A-Z]/){
        if (length($password) >= 8){
            if ($password =~/[0-9]/){
                print "This is a correct code!\n";
            }
        }
        else{
            print "You must input the password which's length is more than eight!\n";
        }
    }
    else{
        print "Your password must start with a capital letter!\n";
    }
}