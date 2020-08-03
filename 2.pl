#!/usr/bin/perl
@array1 = (1,2,4,6,8);
@array2 = (4,3,6,8,91,45);
@array1[0,3] = @array2[2,5]; #第零个和第三个
print "@array1 \n @array2" 