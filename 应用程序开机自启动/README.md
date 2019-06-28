# Linux 应用系统自动启动：
## 1.Oracle启动
## 2.MongoDB启动
## 3.Redis启动
## 4.Tomcat启动
## 5.Microservices启动
# 使用说明：
## 1. 将本目录下所有*.sh脚本文件拷贝到/opt目录下
## 2. 将所有*.sh脚本文件赋予执行权限
```bash
cd /opt/
chmod 755 ApplicationMainAutostart.sh MicroservicesAutostart.sh MongoDBAutostart.sh OracleAutostart.sh RedisAutostart.sh TomcatAutostart.sh
```
## 3. 根据服务器配置情况修改*.sh脚本文件中目录
## 4. 设置开机自动执行/opt/ApplicationMainAutostart.sh脚本
### 4.1 CentOS 6.8操作系统
```bash
echo "/opt/ApplicationMainAutostart.sh" >> /etc/rc.local
```
### 4.2 CentOS 7及以上操作系统
```bash
echo "/opt/ApplicationMainAutostart.sh" >> /etc/rc.d/rc.local
chmod +x /etc/rc.d/rc.local
```


