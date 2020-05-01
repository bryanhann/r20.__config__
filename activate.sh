echo 555
export HH=$(dirname $(grealpath $0))
export MM=($(ls -1 ${HH} | sort | grep '^[0-9]'))
source ${HH}/functions.sh
source ${HH}/firstrun.sh

for AA in $MM; do
    _blue "[$AA]"; echo
    source $(dirname $(grealpath $0))/${AA}/activate.sh
done
