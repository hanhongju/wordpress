#Debian 9 升级为 Debian 10
apt   update
apt   full-upgrade    -y
cp    /etc/apt/sources.list           /etc/apt/sources.list.bak
sed   -i    's/stretch/buster/g'      /etc/apt/sources.list 
apt   update
apt   full-upgrade    -y
apt   autoremove      -y
#查看当前系统版本
lsb_release   -a
#查看当前nginx版本
curl   -I    127.0.0.1
#查看当前php版本
php    -v
#reboot重启各软件，运行新版本
