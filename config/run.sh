while :
do
run=$(ps -ef |grep "$PWD/HEQING_config_server-0.0.1-SNAPSHOT.jar" |grep -v "grep")
if ["$run"] ; then
echo "The service is alive!"
else
echo "The service was shutdown!"
echo "Starting service ..."
nohup java -jar $PWD/HEQING_config_server-0.0.1-SNAPSHOT.jar &
echo "The service was started!"
fi
sleep 10
done
