# the usage text
usage="$(basename "$0") [-h] [-i <server> -r <remote-port> -u <username> -p <password> -s <source-port> -d <destination-port>] -- tool untuk port forwarding

where:
    -h  open this help information
    -i  server IP or domain
    -r  remote server port (default=22)
    -u  user SSH
    -p  password SSH
    -s  source port to forward (default=8000)
    -d  destination port to forward (default=8001); you will access this port with localhost in your PC

contoh:
    $ bash start-port-forward.sh -i 100.200.300.400 -u ur-ssh-user -p your-ssh-passwd
    $ bash start-port-forward.sh -i 100.200.300.400 -u ur-ssh-user -p your-ssh-passwd -r 22
    $ bash start-port-forward.sh -i 100.200.300.400 -u ur-ssh-user -p your-ssh-passwd -s 8001 -d 8000
    $ bash start-port-forward.sh -i 100.200.300.400 -u ur-ssh-user -p your-ssh-passwd -r 22 -s 8001 -d 8000
"

# read the input arguments
while getopts ':hi:r:u:p:s:d:' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    i) server=$OPTARG
       ;;
    r) remote_port=$OPTARG
       ;;
    u) username=$OPTARG
       ;;
    p) password=$OPTARG
       ;;
    s) source=$OPTARG
       ;;
    d) destination=$OPTARG
       ;;
    :) printf "ERROR: argument -%s tidak ditemukan\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
   \?) printf "ERROR: ditemukan argument ilegal: -%s\n" "$OPTARG" >&2
       echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))

if [ -z "${server}" ]; then
    printf "ERROR: value untuk argument -a (server) tidak boleh kosong\n\n"
    echo "$usage" # exit due to an error
fi

if [ -z "${username}" ]; then
    printf "ERROR: value untuk argument -e (username) tidak boleh kosong\n\n"
    echo "$usage"
    exit 1 # exit due to an error
fi

if [ -z "${password}" ]; then
    printf "ERROR: value untuk argument -e (password) tidak boleh kosong\n\n"
    echo "$usage"
    exit 1 # exit due to an error
fi

if [ -z "${remote_port}" ]; then
    printf "argument -r (remote_port) kosong; set default value with [22] \n\n"
    remote_port=22
fi

if [ -z "${source}" ]; then
    printf "argument -s (source) kosong; set default value with [8000] \n\n"
    source=8000
fi

if [ -z "${destination}" ]; then
    printf "argument -d (destination) kosong; set default value with [8001] \n\n"
    destination=8001
fi

# builds date
build_date=$(date '+%Y-%m-%d_%H:%M:%S_%z')

# shows general information
echo "INFORMASI:"
echo "Anda akan akses server [${server}] dengan akun [(${username})]"
echo "Port forwarding server dgn port [${source}] ke lokal pada port [(${destination})]"
echo "SSH dilakukan pada: '${build_date}'"
echo "------------- END OF SCRIPT NOTE ---------------"
echo ""

# starts SSH
remote_command="-L localhost:${destination}:127.0.0.1:${source}"

# install sshpass -> `apt-get install sshpass`
ssh -p "${remote_port}" "${username}@${server}" "${remote_command}"

exit 0
