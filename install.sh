#!/bin/bash
set -euo pipefail

grep -q 'Include ~/prodekanus/autossh-prodekanus-print/ssh_config' /home/rav/.ssh/config
ln -sf ../prodekanus/autossh-prodekanus-print/autossh-prodekanus-print /home/rav/bin/
ln -sf ../prodekanus/autossh-prodekanus-print/autossh-elrond-print /home/rav/bin/
sudo cp -aiv /home/rav/prodekanus/autossh-prodekanus-print/autossh-{prodekanus,elrond}-print.service /etc/systemd/system/
sudo systemctl daemon-reload
