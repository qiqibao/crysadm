#!/bin/bash
#this is cron start script
#Author:sanzuwu
#Date:2016-03-04
#Desc:add a crontab
#������������ֵ��shell���������������󣬸��¸�ֵ
function random()
{

    min=$1;

    max=$2-$1;

    num=$(date +%s+%N);

    ((retnum=num%max+min));

    #�������������㼴��

    echo $retnum;

    #����ͨ��echo ��ӡ����ֵ��Ȼ���ú����ģ�stdout�Ϳ��Ի��ֵ

    #����һ�ַ��أ�����ȫ�۱�����Ȼ�����������ݣ������ȡ
}
#����BASE_DIRΪ�ű�����Ŀ¼��ȷ��run.sh��cron.sh��ͬĿ¼��
BASE_DIR="$( cd "$( dirname "$0"  )" && pwd  )"
#�������minutes Ϊ�����
minutes=$(random 0 59)
echo "${minutes} * * * * root ${BASE_DIR}/run.sh">>/etc/crontab
echo ===============starting cron==================
cron start
echo =================done!========================