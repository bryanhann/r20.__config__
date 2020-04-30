[[ -z  ${R20_INIT_PID} ]] && {
    r20export R20_INIT_PID      $$
    r20export R20_INIT_TMP      /tmp/r20.${R20_INIT_PID}
    r20export R20_INIT_BIN      /tmp/r20.${R20_INIT_PID}/bin
    r20export R20_DEPTH         -1
    mkdir -p                    /tmp/r20.${R20_INIT_PID}/bin
    r20export XDG_DATA_DIRS     /usr/local/share/:/usr/share/
    r20export XDG_DATA_HOME     ${HOME}/.local/share
    r20export XDG_CONFIG_HOME   ${HOME}/.config
    r20export XDG_CONFIG_DIRS   ${HOME}/.local/etc/xdg:/etc/xdg
    r20export XDG_CACHE_HOME    ${HOME}/.cache
    r20export XDG_RUNTIME_DIR   ${HOME}/.0700
    r20export XDG_X_BUILD       ${HOME}/.__000__
    r20export PIP_DOWNLOAD_CACHE  ${XDG_CACHE_HOME}/pip
}
r20export R20_DEPTH $(( $R20_DEPTH + 1 ))

