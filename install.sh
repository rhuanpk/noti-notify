#!/usr/bin/env bash
INSTALL_PATH='/tmp/noti-notify'
LOG_FILE='/tmp/noti-notify_file.log'
SUDO='sudo'
[ "${UID:-`id -u`}" -eq 0 ] && unset SUDO
{
	git clone 'https://github.com/rhuan-pk/noti-notify.git' "$INSTALL_PATH"
	$SUDO mkdir -pv '/usr/local/lib/noti-notify'
	$SUDO mv -v "$INSTALL_PATH"/lib/* '/usr/local/lib/noti-notify/'
	$SUDO mv -v "$INSTALL_PATH"/bin/* '/usr/local/bin/'
	rm -rfv "$INSTALL_PATH"
} >> "$LOG_FILE"
