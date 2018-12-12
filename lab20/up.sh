docker-compose -f docker-compose.yml up -d
sleep 1

#############################
###### ftpserver ############
#############################

#docker exec ftpserver /bin/sh -c "sudo apt-get install proftpd"
#sleep 1 

#############################
###### ftpclient       ######
#############################


echo "====== fi de la fase de configuració ==========="
echo "====== inicide  la fase de validació    ==========="
echo "------- comprovem els container actius ------------"
docker-compose ps
echo "------- ping client01 > server1           ------------"
docker exec ftpclient /bin/sh -c "ping -c 2 ftpserver"
echo "------- ping server01 > client01       ------------"
docker exec ftpserver /bin/sh -c "ping -c 2 ftpclient"
echo "====== fi de la fase de validació    ==========="
#
#

