r20export R20_VENV_CONFIG $(dirname $(grealpath $0))
r20export R20_VENV_BLD      ${XDG_X_BUILD}/venv
r20export R20_VENV_BIN      ${R20_VENV_BLD}/bin
r20export R20_VENV_FLAG     ${R20_VENV_BLD}/__pass__.flag

r20_venv_build () {
    [[ -f $R20_VENV_FLAG ]] && {_green  PASSING: $R20_VENV_FLAG ; echo ; return; }
    [[ -f $R20_VENV_FLAG ]] || {_yellow MISSING: $R20_VENV_FLAG ; echo }
    python3 -m venv ${R20_VENV_BLD}
    source ${R20_VENV_BIN}/activate
    fail=0
    pip install --upgrade pip || fail=1
    pip install wheel || fail=1
    pip install virtualenvwrapper || fail=1
    [[ $fail = 0 ]] && touch ${R20_VENV_FLAG}
    [[ -f $R20_VENV_FLAG ]] && {_green  PASSING: $R20_VENV_FLAG ; echo}
    [[ -f $R20_VENV_FLAG ]] || {_red    MISSING: $R20_VENV_FLAG ; echo }
}

r20_venv_rebuild () {
    rm -rf ${R20_VENV_BLD}
    r20_venv_build
}

r20_venv_build
source ${R20_VENV_BIN}/activate
python -V

