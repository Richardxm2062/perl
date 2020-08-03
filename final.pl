#!/usr/bin/perl
use lib "./package";
use ScatterPlot;
use Time::HiRes qw(usleep);#qw(usleep) <=> ('sleep')
 


$g = 9.8;   #�������ٶ�
$L = 1;    #����
$fi = 0.523583333333333; #��ʼ�Ƕ�pi/6
$step = 0.01;   #��ⲽ��
$microseconds = 300_000;#����ʱ��
$item = 0;#һ����ʼֵΪ0������ֵ
$n = 0;#��ͼ����


#���쳤��Ϊ10000������Ϊ0.01��ʱ���б�
for $j (0..9999){
    @time[$j] = $step;
    $step += 0.01;
}

$len = @time;#����б���

#�����ѻ�õ�ʱ���б����һ��theta�ǵ�ʱ������
foreach $t (@time){
        $theta[$item] = cos(sqrt($g/$L)*$t + $fi);
        $item += 1;
}

my $plot = ScatterPlot->new();  #����ScatterPlot���е�һ���µĶ���
my $x_size = 130;   #����ͼ��X�����ϵĳ���
my $y_size = 15;    #����ͼ��Y����ĳ���
my @xy_points = ();     #������ά������


#��������@xy_points��ֵ
for ($i=0;$i<=9999;$i++){

    #��ǰ��30��������10��������ʱ��ʹͼ�ϵĵ�ϡ�ͣ��������ʼ�������㡣
    if (($i%10==0) and ($i!=0)){
        for ($j=2;$j<=$i;$j+=2){
            $xy_points[$j][0] = 0;
            $xy_points[$j][1] = 0;
        }
        if ($i==20){
            $xy_points[1][0] = -$xy_points[0][0]; #���ڶ��������ȡ��һ�������Y��ĶԳƵ㣬�Ի�ø��õ�ͼ��۽�
            $xy_points[1][1] =  $xy_points[0][1];
        }
    }

    
    
    #����������30ʱ���ӽ�Խ��Y�ܣ���ն������ݵ㣬ֻ����3���㡣�Ӿ����㹻
    if ($i >= 30){
        for ($j=2;$j<=$i-3;$j++){
            $xy_points[$j][0] = 0;
            $xy_points[$j][1] = 0;
        }
        
    }
    
    $xy_points[$i][0] = cos($theta[$i]-1.5707963);  #ת��ΪX����
    $xy_points[$i][1] = sin($theta[$i]-1.5707963);  #ת��ΪY����

    print "\n";
    print "\n";
    print "\n";

    $n+=1;
    print "The n is ".$n;
    
    $plot->draw(\@xy_points, $x_size, $y_size, 'x_axis', 'y_axis', 'O', 'text');    #ͼ�����
    usleep($microseconds);#��������
}

system 'pause';