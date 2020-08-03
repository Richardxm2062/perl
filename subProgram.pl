#最大 最小值  数组排序 汉诺塔 均值 中值 方差 

#use List::Util qw/max min/;

@a = ( 10, -1, 6, 25, 8 );
print "测试数组为 @a\n";
sub myMax {
	my @array = @_;
	my $max   = $array[0];
	foreach $i (@array) {
		if ( $i > $max ) {
			$max = $i;
		}
	}

	return $max;
}

sub myMin {
	my @array = @_;
	my $min   = $array[0];
	foreach $i (@array) {
		if ( $i < $min ) {
			$min = $i;
		}
	}

	print $min;

}

sub myAverage {
	my (@array) = @_;
	foreach $i (@array) {
		$sum += $i;

	}
	$num = @array;
	$result  = $sum / $num;
	return $result;

}
sub middle{
	my(@array)= @_;
	
	@array = &mySort(@array);
	if(@array%2==0){
		print "the middle is $array[@array/2-1] and $array[@array/2]\n";
	}
	else{
		$i =int(@array/2);
		
		print " $array[$i]\n";
	}
}


sub variance{
	my(@array) = @_;
#	print @array;
    $sum = 0;
	$average = &myAverage(@array);   #这样调用会出错.#改： 原因：小心perl全局变量
#	print $average."\n";
	$num = @array;
	
	$sum = 0;
	foreach $i(@array){
		$sum =$sum + ($i-$average)*($i-$average);
		
	}
	return $sum/$num;
}


sub mySort {
	my @array = @_;
	#$min = $array[0];
	for ( $j = @array-1 ; $j > 0 ; $j-- ) {
		for ( $i = @array-1 ; $i > @array-1-$j ; $i-- ) {
			if ( $array[$i] <$array[$i-1] ) {
				$interim = $array[$i-1];
				$array[$i-1] = $array[$i];
				$array[$i] = $interim;
			}
		}
	}
	return @array;
		
	
}
print "there is average:\n";
print &myAverage(@a)."\n";

print "there is variance:\n";
print &variance(@a)."\n";

print "there is middle:\n";
&middle(@a);
print "there is Bubble sort\n";
foreach $i (mySort(@a)){
	print "$i\n";
}
#myMax(@a);


###汉诺塔


$step = 0;

sub move {
	my ( $num, $begin, $end ) = @_;
	$step++;
	print "the step $step,put plate$num from column $begin to $end\n";
}

sub hanoi {
	my ( $num, $begin, $interim, $end ) = @_;   ##借助 interim 从 begin到end
	if ( $num == 1 ) {
		&move( 1, "$begin", "$end" );
	}
	else {
		&hanoi( $num - 1, $begin, $end, $interim );
		&move( $num, "$begin", "$end" );
		&hanoi( $num - 1, $interim, $begin, $end );
	}
}
print "there is hanoi:\n";
print "please input the numbers of the plates\n";
$number = <STDIN>;

&hanoi( $number, "A", "B", "C" );

