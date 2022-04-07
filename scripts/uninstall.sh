#!/bin/bash

BIN_PATH_INSTALLED="/usr/local/bin/crowdsec-firewall-bouncer-oht"
CONFIG_DIR="/etc/crowdsec/bouncers/crowdsec-firewall-bouncer-oht.yaml"
LOG_FILE="/var/log/crowdsec-firewall-bouncer-oht.log"
SYSTEMD_PATH_FILE="/etc/systemd/system/crowdsec-firewall-bouncer-oht.service"

uninstall() {
	systemctl stop crowdsec-firewall-bouncer-oht
	rm -rf "${CONFIG_DIR}"
	rm -f "${SYSTEMD_PATH_FILE}"
	rm -f "${BIN_PATH_INSTALLED}"
	rm -f "${LOG_FILE}"
}

uninstall

echo "crowdsec-firewall-bouncer-oht uninstall successfully"