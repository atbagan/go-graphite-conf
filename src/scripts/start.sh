#!/bin/bash

cd /opt/go-carbon
sudo make
cd /opt/carbonapi
sudo make
sudo systemctl enable go-carbon
sudo systemctl start go-carbon
sudo systemctl enable carbonapi
sudo systemctl start carbonapi
sudo systemctl enable httpd
sudo systemctl start httpd