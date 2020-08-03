#!/urs/bin/perl

open(file,">>s.txt");
select(file);#将print的目标指向文件而不是屏幕
print("1\n2\n3\n");
system'pause';