# BatchUpload-For-Flexpepdock
Flexpepdock 批量上传工具

Bioinfomatics tools for http://flexpepdock.furmanlab.cs.huji.ac.il/

usage : 
  (1)单个上传 ：batchUpload + 1.pdb
  (2)多个上传 ：batchUpload + 1.pdb  2.pdb  3.pdb (空格分开即可）
  (2)批量上传 ：batchUpload + pdb文件所在的目录地址  (会将目录底下的pdb全部上传分析)
result: 输出的是 网站获取结果的链接，请自行复制保存查看

linux一键安装命令

```text-plain
sudo wget http://47.100.94.83:8082/download/install.sh -O /usr/local/install.sh && bash /usr/local/install.sh
```

python一键安装命令

```
python3 install flexpepdock
```



提示: 

1 、如果root环境未安装python3会显示失败

2、 如果分用户无权sudo的话，可能会安装失败 (因为一键安装脚本中用到了sudo)

