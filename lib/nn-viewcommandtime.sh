view_command() {
	i=1
	path="/usr/local/lib/noti-notify/nn-send.sh"
	lines=$(wc -l ${path} | cut -d ' ' -f 1)
	echo ""
	while [ ${i} -lt $((${lines}-1)) ]; do
		sed -n "$((${i}+1))p" ${path}
		let ++i
	done
	echo ""
}
view_time(){
	echo -e "\nTempo definido: ${TIME}s\n"
}
