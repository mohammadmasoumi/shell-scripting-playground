
# load custom env whenever pycharm venv loaded
sudo vim vevn/bin/activate
export  $(cat  /path/to/.env | xargs)
