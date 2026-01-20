hey="python3 -m venv ~/path/to/venv"
wow="source ~/path/to/venv/bin/activate"
yesA="python3 -m http.server 8000"
#2
#yesB="python3 app.py"
#3
#yesC="python3 lumiere_ws_server.py"
#gnome-terminal -x bash -c -- "$hey; $wow;$yesA"
#gnome-terminal -x bash -c -- "$hey; $wow;cd ~/hulahoop;$yesB"
#gnome-terminal -x bash -c -- "$hey; $wow;cd ~/hulahoop;$yesC"
#gnome-terminal --tab --title="tab 1" --command="bash -c 'cd ~/hulahoop;$hey; $wow;cd ~/hulahoop;ls;$yesA;'" --tab --title="tab 2" --command="bash -c '$hey; $wow;cd ~/hulahoop;ls;$yesB'" --tab --title="tab 3" --command="bash -c '$hey; $wow;ls;cd ~/hulahoop;$yesC;'"

python3 -m venv ~/path/to/venv
source ~/path/to/venv/bin/activate
python3 app.py
