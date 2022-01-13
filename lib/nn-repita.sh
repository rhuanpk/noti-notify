nn_repita() {
	while :; do
		if [ "${2}" = "" ]; then
			sleep 1
		else
			sleep ${2}
		fi
		clear
		if [ "${1}" = "" ]; then
			ls -lhF
		else
			${1}
		fi		
	done
}
