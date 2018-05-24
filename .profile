function edit () {
	nano "$1";
}

# Disable crontab -r
function crontab () {
	/usr/bin/crontab "${@/-r/-e}";
}

# find process(es) bound to port
function bound () {
	netstat -tulpn | grep :"$1";
}
