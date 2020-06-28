source ${ZDOTDIR}/functions.sh
source ${ZDOTDIR}/firstrun.sh
source ${ZDOTDIR}/hashes.sh
export MM=($(ls -1 ${ZDOTDIR} | sort | grep '^[0-9]'))
for AA in $MM; do r20source ${ZDOTDIR}/${AA}/activate.sh; done
