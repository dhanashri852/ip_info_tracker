#!/bin/bash
#
echo " ip geoloaction tracker (kali) "
echo "============================ "
read -p " enter ip address to tracker ip "
if [[ -z "$ip " ]] ; then
	echo " no ip address enterd. exiting ."
	exit 1
fi 
echo " "
echo " tracking your $ip "
echo "======================"
responce=$(curl -s https:ipinfo.io/$ip/json)
status=$(echo $responce | grep -o '"status":"[^"]*'| cut -d':' -f2 | tr -d "")
if [ "$status"! ="success" ];then
	echo "[!] failed to fetch data . check ip or network."
	exit 1
fi
echo " "
echo "[1] display ip "
echo "[2] display country  "
echo "[3] display city"
echo "[4] display hostname"
echo "[5] display region "
echo "[6] display loc "
echo "[7] display org "
echo "[8] display postal "
echo "[9] display timezone "
echo "[10] display readme "
echo "[11] display anycast "
read no
if [ $no == 1 ]; then
	#echo "ip address: $(echo $responce | grep -o '"query":"[^"]*'| awk '{print $2}'cut -d':' -f2 | tr -d '"')"
	curl ipinfo.io/8.8.8.8/json |  grep 8.8.8.8
elif [ $no == 2 ]; then
	#echo "country :$(echo $responce | grep -o '"country":"[^"]*' | awk '{print $2}' cut -d':' -f2 | tr -d '"')"
	curl ipinfo.io/8.8.8.8/json | grep country
elif [ $no == 3 ]; then
	#echo "city : $(echo $responce | grep -o '"city":"[^"]*' | awk '{print $3}' cut -d':' -f2 | tr -d '"')"
	curl ipinfo.io/8.8.8.8/json | grep city
elif [ $no == 4 ]; then
	#echo "hostname : $(echo $responce | grep -o '"hostneme":"[^"]*' | awk '{print $4}' cut -d':' -f2 | tr -d '"')"	
	curl ipinfo .io/8.8.8.8/json | grep hostame
elif [ $no == 5 ]; then 
	# echo " region : $(echo $responce | grep -o '"region ":"[^"]*' | awk ' {print $2}' cut -d ':' -f2 | tr -d '"')"
	curl ipinfo .io/8.8.8.8/json | grep region
elif [ $no == 6 ]; then
	curl ipinfo.io/8.8.8.8/json | grep loc
elif [ $no == 7 ]; then
	curl ipinfo.io/8.8.8.8/json | grep org
elif [ $no == 8 ]; then
	curl ipinfo.io/8..8.8/json | grep postal
elif [ $no == 9 ]; then
	curl ipinfo.io/8.8.8.8./json | grep timezone
elif [ $no == 10 ]; then
	curl ipinfo.io/8.8.8.8/json | grep readme
elif [ $no == 11 ]; then
	curl ipinfo.io/8.8.8.8/json | grep anycast
else
	 echo " wrong option selected "
fi
 




