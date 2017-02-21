# mojolicious test環境構築 #

## 以下環境を作るvagrant設定 ##

 * CentOS7
 * perlbrew
 * cpanm
 * Perl 5.20.3
 * mojolicious

## 備考 

 * C:\Users\****\.vagrant.d\boxes\centos-VAGRANTSLASH-7\******\virtualbox
Vagrantfile
  config.vm.synced_folder ".", "/home/vagrant/sync", type: "rsync"
をコメントアウトする必要があるかもしれない。

 * mojoliciousはperl5.20以上だと、同梱ライブラリで動作するとのことなので
5.20.3を選択している。




