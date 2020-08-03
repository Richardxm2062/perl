#!/usr/bin/perl
use lib "./package";
use ScatterPlot;
use Time::HiRes qw(usleep);#qw(usleep) <=> ('sleep')
 


$g = 9.8;   #重力加速度
$L = 1;    #绳长
$fi = 0.523583333333333; #初始角度pi/6
$step = 0.01;   #求解步长
$microseconds = 300_000;#休眠时间
$item = 0;#一个初始值为0的索引值
$n = 0;#画图次数


#构造长度为10000，步长为0.01的时间列表
for $j (0..9999){
    @time[$j] = $step;
    $step += 0.01;
}

$len = @time;#获得列表长度

#利用已获得的时间列表，获得一个theta角的时间序列
foreach $t (@time){
        $theta[$item] = cos(sqrt($g/$L)*$t + $fi);
        $item += 1;
}

my $plot = ScatterPlot->new();  #构建ScatterPlot包中的一个新的对象
my $x_size = 130;   #设置图标X方向上的长度
my $y_size = 15;    #设置图表Y方向的长度
my @xy_points = ();     #构建多维空数组


#给空数组@xy_points赋值
for ($i=0;$i<=9999;$i++){

    #对前面30个点满足10的整数倍时，使图上的点稀释，并保留最开始的两个点。
    if (($i%10==0) and ($i!=0)){
        for ($j=2;$j<=$i;$j+=2){
            $xy_points[$j][0] = 0;
            $xy_points[$j][1] = 0;
        }
        if ($i==20){
            $xy_points[1][0] = -$xy_points[0][0]; #将第二点的坐标取第一个点关于Y轴的对称点，以获得更好的图像聚焦
            $xy_points[1][1] =  $xy_points[0][1];
        }
    }

    
    
    #当点数大于30时，接近越过Y周，清空多余数据点，只保留3个点。视觉上足够
    if ($i >= 30){
        for ($j=2;$j<=$i-3;$j++){
            $xy_points[$j][0] = 0;
            $xy_points[$j][1] = 0;
        }
        
    }
    
    $xy_points[$i][0] = cos($theta[$i]-1.5707963);  #转化为X坐标
    $xy_points[$i][1] = sin($theta[$i]-1.5707963);  #转化为Y坐标

    print "\n";
    print "\n";
    print "\n";

    $n+=1;
    print "The n is ".$n;
    
    $plot->draw(\@xy_points, $x_size, $y_size, 'x_axis', 'y_axis', 'O', 'text');    #图像绘制
    usleep($microseconds);#进行休眠
}

system 'pause';