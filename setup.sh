EXT_PORT=$1
INT_PORT=$2
sudo sed -e 's/${EXTERNAL_PORT}'"/$EXT_PORT/" -e 's/${INTERNAL_PORT}'"/$INT_PORT/" serveo.service.template > /etc/systemd/system/serveo.service
sudo systemctl daemon-reload
sudo systemctl start serveo
