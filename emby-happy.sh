#!/bin/bash
read -p "本脚本适用于emby群辉4.7.11.0版本，确认是否安装？,请输入1安装,退出请输入0: " para
if [ $para == "1" ]
then
	echo "----------------继续----------------"
else
	echo "----------------退出----------------"
    exit
fi


wget --no-check-certificate https://cangshui.net/-down/-mysh/emby/synology4.7.11.0/emby-happy.tar
tar -xf emby-happy.tar
cp /root/Emby.Web.dll   /var/packages/EmbyServer/target/system/Emby.Web.dll 
cp /root/MediaBrowser.Model.dll  /var/packages/EmbyServer/target/system/MediaBrowser.Model.dll  
cp /root/connectionmanager.js /var/packages/EmbyServer/target/system/dashboard-ui/modules/emby-apiclient/connectionmanager.js  
cp /root/embypremiere.js /var/packages/EmbyServer/target/system/dashboard-ui/embypremiere/embypremiere.js  
cp /root/Emby.Server.Implementations.dll /var/packages/EmbyServer/target/system/Emby.Server.Implementations.dll  



rm -rf emby-happy.tar
rm -rf connectionmanager.js
rm -rf Emby.Server.Implementations.dll
rm -rf Emby.Web.dll
rm -rf embypremiere.js
rm -rf MediaBrowser.Model.dll
rm -rf emby-happy.sh

echo "-------------------全部完成-------------------"
echo "运行后重启套件,清除浏览器缓存,填写任意激活码."

