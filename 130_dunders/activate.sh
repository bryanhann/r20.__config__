r20export R20_DUNDERS_GIT_LOCAL     ${XDG_X_BUILD}/dunders.repo
r20export R20_DUNDERS_GIT_REMOTE    https://github.com/bryanhann/r20.activate.dunders
r20clone  ${R20_DUNDERS_GIT_REMOTE} ${R20_DUNDERS_GIT_LOCAL}
r20source ${R20_DUNDERS_GIT_LOCAL}/activate.sh
#_blue "    source ${R20_DUNDERS_GIT_LOCAL}/activate.sh"
#           source ${R20_DUNDERS_GIT_LOCAL}/activate.sh
