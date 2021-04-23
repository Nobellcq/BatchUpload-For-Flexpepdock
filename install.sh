#!/bin/bash
#sh 中没有source命令
#直接下载python3安装包
url='http://47.100.94.83:8082/download/'
dir_name='flexpepdock-1.0.6'
zip_format='.tar.gz'
tar_name=$dir_name$zip_format
download_url=$url$tar_name


wget $download_url -O ./$tar_name && tar -zxvf $tar_name
rm $tar_name       #将安装包删除
sudo rm -rf flexpepdock   #把原来的基础架构删除了
mv $dir_name flexpepdock
cd flexpepdock
sudo python3 setup.py install #这步可以不用安装，因为并不需要写入python3 库
#rm install.sh  #删除安装包方便下次升级  无法删除自己
SHELL_FOLDER=$(cd "$(dirname "$0")";pwd)
#添加环境变量不好用，不如直接软连接
#sudo echo export PATH=$SHELL_FOLDER/flexpepdock/:$PATH >> /etc/profile
# source /etc/profile
chmod +x $SHELL_FOLDER/flexpepdock/batchUpload.py
sudo ln -s $SHELL_FOLDER/flexpepdock/batchUpload.py /usr/local/bin/batchUpload
echo "安装完成"