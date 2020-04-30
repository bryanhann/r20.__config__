r20export BCH_HISTORY_GIT_LOCAL  ${HOME}/..history
r20export BCH_HISTORY_GIT_REMOTE https://github.com/bryanhann/bch.personal.history
r20clone ${BCH_HISTORY_GIT_REMOTE} ${BCH_HISTORY_GIT_LOCAL}
r20source ${BCH_HISTORY_GIT_LOCAL}/activate.sh
