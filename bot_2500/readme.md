git clone https://github.com/xiaobai2023123412412343/uguanjia.git

sudo apt update
sudo apt install python3
python3 --version

运行脚本:python3.10+

pip install tronpy

pip install pymysql

pip install requests

pip install python-telegram-bot==20.0a4


pip install APScheduler 

数据库:mysql5.7+
sudo apt install mysql-server
mysql --version


详细配置bot_config.py 注释有


安装好python  安装vscode
打开项目文件夹：在终端 输入上面的命令 拉取依赖
数据库新建个库把：bot_2500.sql 导入进去
停止MySQL服务：

在终端输入以下命令来停止MySQL服务：

bash
Copy code
sudo systemctl stop mysql
以安全模式启动MySQL服务：

在终端输入以下命令来以安全模式启动MySQL服务：

bash
Copy code
sudo mysqld_safe --skip-grant-tables &
这将以跳过授权表的方式启动MySQL服务，允许你在没有密码的情况下访问MySQL。

登录到MySQL：

在终端输入以下命令来登录到MySQL：

bash
Copy code
mysql -u root
因为你以跳过授权表的方式启动了MySQL服务，所以你不需要密码就能登录到MySQL。

重置密码：

在MySQL提示符下，输入以下命令来重置你的密码：

sql
Copy code
FLUSH PRIVILEGES;
ALTER USER 'root'@'localhost' IDENTIFIED BY 'new_password';
在上面的命令中，new_password应替换为你想要设置的新密码。

exit   退出MySQL
mysql -u root -p   登录

CREATE USER 'bot_2500'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON *.* TO 'bot_2500'@'localhost';
FLUSH PRIVILEGES;
在数据库创建一个bot_2500 用户名


mysql -u root -p
CREATE DATABASE jiankong;

mysql -u root -p jiankong < bot_2500.sql  导入到数据库

修改配置文件：bot_config.py
cd ~/uguanjia/bot_2500/func
nano bot_config.py
cd ~/uguanjia/bot_2500
然后启动：
python3 check.py
python3 bot.py

把机器人的webhook地址指向你自己搭建的服务器地址 完事。
