use Data::Dumper;
my $my_scalar = "This is my scalar";
my @my_array = ("hello", "world", "123", 456);
my %my_hash = ( itmeA=> 12.4, itemB=> 1.72e30, itemC=>"bye/n");
print Dumper($my_scalar);
print Dumper(\@my_array);
print Dumper(\%my_hash);