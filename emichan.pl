#!/usr/bin/perl
use strict;
use warnings;

# 読み込みたいファイル名
my $file = $ARGV[0]; 

open(my $fh, "<", $file)
  or die "Cannot open $file: $!";

# readline関数で、一行読み込む。
while(<$fh>){ 
    # chomp関数で、改行を取り除く
    chomp $_;

    if($_=~/@/){
	$_ =~s/@/<br>/g;
    }
    # $line に対して何らかの処理。
    # 標準出力へ書き出し。
    $_ =~s/^/<p>/;
    $_ =~s/$/<\/p>/;
    print $_, "\n";

    # ファイルがEOF( END OF FILE ) に到達するまで1行読みこみを繰り返す。
}

close $fh;
