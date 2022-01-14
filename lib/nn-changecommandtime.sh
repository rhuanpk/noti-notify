change_command(){
	PATH="/usr/local/lib/noti-notify/nn-send.sh"
	echo 'nn_notify() {' > ${PATH}
	while read line; do
		echo "        ${line}" >> ${PATH}
	done < ${1}
	echo '}' >> ${PATH}
}
change_time(){
	if [ "${1}" = "" -o ${1} -lt 1 ]; then
		echo -e "\n\e[31m> Time cannot be null and and must be greater than 1 !\e[m\n"; exit 1
	else
		sudo sed -i "1s~^.*~TIME=${1}~" /usr/local/lib/noti-notify/nn-startend.sh
		echo -e "\n\e[32m> Successfully changed !\e[m\n"; exit 0
	fi
}
