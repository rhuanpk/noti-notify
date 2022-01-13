start_command(){
	cd /tmp; kill -HUP $(nn_repita 'nn_notify' '60') &
}
end_command() {
	kill -TERM $(ps -e -o pid,cmd | grep -E 'noti-notify -s|noti-notify --start' | grep 'bash' | awk '{print $1}')
}
