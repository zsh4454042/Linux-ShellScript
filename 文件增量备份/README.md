# Linux文件增量备份：
## 1、将FileIncrementalBackup.sh上传至服务器/opt目录下，并将脚本中的ip改成应用服务器ip
## 2、赋予文件执行权限
```
chmod 755 /opt/FileIncrementalBackup.sh  
```
## 3、root用户生成公钥
```
ssh-keygen -t rsa
## 一路回车即可
```
## 4、免密登陆服务器
服务器root用户运行：
```
scp /root/.ssh/id_rsa.pub root@192.168.0.216:/root/.ssh/authorized_keys  
## 192.168.0.216根据现场备份服务器ip改
```
## 5、备份服务器创建存放备份文件目录
```
mkdir -p  /opt/ad_bak
```
## 6、定时执行增量备份
### （1）定义定时任务
```
crontab -e
```
添加以下内容：  
```
59 23 * * * /opt/FileIncrementalBackup.sh
## 表示每天23:59分执行/opt/FileIncrementalBackup.sh
```
### （2）crond服务命令
```
service crond start
service crond stop
service crond restart
service crond reload
service crond status
```