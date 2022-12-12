Sqitch Documentataion: https://sqitch.org/docs/manual/sqitchtutorial/

Steps for Deploying Sqitch DB from Local Machine:
1. Install sqitch on local machine & DB server
2. Set Environment Variable in Local Machine

EXPORT host_ip_addr=10.10.2.236
EXPORT port_no=5432
EXPORT username=appuser
EXPORT password=userapp@123
EXPORT dir_check=/home/appuser/test/
EXPORT from_path=/root/sqitch_test/
EXPORT to_path=/home/appuser/test/sqitch_test/
EXPORT cd_path=test/sqitch_test/
EXPORT db_name=sqitch_test
EXPORT db_user=appuser
EXPORT db_password=12345

Method 1: Set Environment variables for the perticular session
Method 2: Set Environment variables in ~/.bashrc to set on every boot

3. Execute Python Script spottrek_connect_ssh.py
