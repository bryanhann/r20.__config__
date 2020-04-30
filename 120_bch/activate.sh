r20export R20_BCH_GIT_LOCAL     ${XDG_X_BUILD}/bch.repo
r20export R20_BCH_GIT_REMOTE    https://github.com/bryanhann/r20.activate.bch
r20clone ${R20_BCH_GIT_REMOTE} ${R20_BCH_GIT_LOCAL}
r20source ${R20_BCH_GIT_LOCAL}/activate.sh
