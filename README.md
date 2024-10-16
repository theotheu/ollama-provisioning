# Provisioning with Ansible

The vagrant directory is for local test purposes.

If you want to test local, start with vagrant. Then continue with ansible.

See README in vagrant directory and ansible directory.


## One-liner for ordinary user to run on new machine. The script asks for a root password. 

`wget -qO- https://raw.githubusercontent.com/theotheu/ollama-provisioning/master/run.sh | bash`

## Ollama
https://www.server-world.info/en/note?os=Ubuntu_22.04&p=ollama&f=1

# History
## ttheunise
```
ttheunisse@ubuntu2204with:~$ history
    1  ifconfig |grep -i establ
    2  ifconfig -a
    3  ifconfig -a|grep -i listen
    4  ls -l
    5  vi install.sh 
    6  ollama pull llama3.1:70b
    7  curl http://127.0.0.1:11434/api/generate -d '{"model": "llama3.1", "prompt": "Why is the sky blue?" }'
    8  curl http://127.0.0.1:11434/api/generate -d '{"model": "llama3.2", "prompt": "Why is the sky blue?" }'
    9  vi install.sh 
   10  curl http://127.0.0.1:11434/api/generate -d '{"model": "llama3.1:70b", "prompt": "Why is the sky blue?" }'
   11  exit
   12  vi install.sh
   13  chmod +x *sh
   14  ./install.sh 
   15  §
   16  vi install.sh 
   17  ./install.sh 
   18  vi install.sh 
   19  ollama run llama3.1:70b
   20  ifconfig|grep 80
   21  apt install net-tools
   22  sudo apt install net-tools
   23  ifconfig|grep 80
   24  OLLAMA_HOST=127.0.0.1:80 ollama serve
   25  ifconfig|grep 3389
   26  OLLAMA_HOST=127.0.0.1:3389 ollama serve
   27  ollama run llama3.1:70b
   28  netstat -a|grep 3389
   29  netstat -a|grep -i listen
   30  lsof
   31  lsof|grep ollama
   32  lsof|grep 11434
   33  lsof|grep ollama
   34  lsof|grep ollama|awk {'print $2'}
   35  kill -9 `lsof|grep ollama|awk {'print $2'}`
   36  lsof|grep ollama|awk {'print $2'}
   37  kill -9 `lsof|grep ollama|awk {'print $2'}`
   38  lsof|grep ollama|awk {'print $2'}
   39  kill -9 `lsof|grep ollama|awk {'print $2'}`
   40  lsof|grep ollama|awk {'print $2'}
   41  kill -9 41778
   42  sudo kill -9 41778
   43  sudo kill -9 `lsof|grep ollama|awk {'print $2'}`
   44  lsof|grep ollama|awk {'print $2'}
   45  netstat -a
   46  netstat -a|grep 3389
   47  netstat -a|grep 11434
   48  ps -aef\grep ollama
   49  ps -aef|grep ollama
   50  kill -9 2583989
   51  sudo kill -9 2583989
   52  ps -aef|grep ollama
   53  ps -aef|grep ollama|grep -v grep
   54  ps -aef|grep ollama|grep -v grep|awk {'print $2'}
   55  sudo kill -9 `ps -aef|grep ollama|grep -v grep|awk {'print $2'}`
   56  ps -aef|grep ollama|grep -v grep
   57  lsof|grep 11434
   58  netstat -a|grep 11434
   59  lsof
   60  lsof|grep ollama
   61  lsof|grep ollama|grep -v grep
   62  lsof|grep ollama|grep -v grep|awk {'print $2'}
   63  sudo kill -9 `lsof|grep ollama|grep -v grep|awk {'print $2'}`
   64  lsof|grep ollama|grep -v grep
   65  sudo kill -9 `lsof|grep ollama|grep -v grep|awk {'print $2'}`
   66  lsof|grep ollama|grep -v grep
   67  sudo kill -9 2585902
   68  sudo ss -lptn 'sport = :11434'
   69  sudo lsof -n -i :11434
   70  kill -9 2585949
   71  sudo kill -9 2585949
   72  kill -9 2585949
   73  sudo lsof -n -i :11434
   74  sudo lsof -n -i :11434|awk {'print $2'}
   75  sudo kill -9 `sudo lsof -n -i :11434|awk {'print $2'}`
   76  sudo kill -9 `sudo lsof -n -i :11434|grep -v PID|awk {'print $2'}`
   77  sudo lsof -n -i :11434|awk {'print $2'}
   78  sudo kill -9 `sudo lsof -n -i :11434|grep -v PID|awk {'print $2'}`
   79  sudo lsof -n -i :11434|awk {'print $2'}
   80  systemctl stop ollama.service
   81  sudo bash
   82  sudo lsof -n -i :11434|awk {'print $2'}
   83  netstat -a |grep 3389
   84  netstat -a |grep ollama
   85  pgrep 11434
   86  pgrep ollama
   87  sudo systemctl stop ollama.service
   88  pgrep ollama
   89  sudo bash
   90  pgrep ollama
   91  sudo bash
   92  ifconfig
   93  OLLAMA_HOST=127.0.0.1:3389 ollama serve
   94  netstat -a|grep 3389
   95  OLLAMA_HOST=127.0.0.1:3389 ollama serve
   96  OLLAMA_HOST=127.0.0.1:3389 && ollama serve
   97  ifconfig -a
   98  curl http://127.0.0.1:11434/api/generate -d '{"model": "llama3.1", "prompt": "Why is the sky blue?" }'
   99  OLLAMA_HOST=127.0.0.1:11434 ollama serve
  100  ifconfig
  101  netstat -a|grep -i listen
  102  ifconfig
  103  sudo bash
  104  history
ttheunisse@ubuntu2204with:~$ 
```

## root
```
root@ubuntu2204with:/home/ttheunisse# history
    1  systemctl stop ollama.service
    2  exit
    3  systemctl stop ollama.service
    4  exit
    5  systemctl stop ollama.service
    6  netstat -a|grep 3389
    7  netstat -a|grep ollama
    8  netstat -a|grep 11434
    9  sudo killall -s 9 ollama
   10  netstat -a|grep 11434
   11  sudo killall -s 9 ollama
   12  netstat -a|grep 11434
   13  sudo killall -s 9 ollama
   14  uptime
   15  cd /etc/rc3.d/S01
   16  cd /etc/rc3.d/
   17  ls -ltr
   18  cd ../init.d/
   19  ls -l
   20  ls -l|grep ollama
   21  find /etc -name ollama
   22  find /etc -name ollama*
   23  cd /etc/systemd/system/
   24  vi ollama.service 
   25  find /etc -name ollama*
   26  vi /etc/systemd/system/default.target.wants/ollama.servic
   27  vi /etc/systemd/system/default.target.wants/ollama.service 
   28  ifconfig
   29  nginx
   30  apt install nginx
   31  cd /etc/nginx/sites-available/default 
   32  cd /etc/nginx/sites-available/
   33  vi default 
   34  nginx -t
   35  service nginx restart
   36  lsb_release -a
   37  apt update -y
   38  apt install certbot -y
   39  apt install python3-certbot-nginx -y
   40  certbot --nginx -d surf.tezzt.nl
   41  curl http://surf.tezzt.nl/api/generate -d '{
   42    "model": "llama3.2",
   43    "prompt": "Why is the sky blue?"
   44  }'
   45  service ollama start
   46  vi default 
   47  cd /var/www/html/
   48  ls -l
   49  vi index.nginx-debian.html 
   50  cd /etc/nginx/sites-available/
   51  vi default
   52  history
   53  exit
   54  history
```