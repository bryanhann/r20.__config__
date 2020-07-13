_color      () { tput setaf $1; [[ "$2" == "." ]] || tput setab $2; shift; shift; echo -n $*; tput sgr0; }
_black      () { _color  15   0  $*; }
_blue       () { _color  15   4  $*; }
_yellow     () { _color  16  11  $*; }
_green      () { _color   0  10  $*; }
_red        () { _color  15   9  $*; }
_exec       () { _black "  " ; _green  "[exec]" ; _black " $* " ; echo ; $* ; }
_skip       () { _black "  " ; _yellow "[skip]" ; _black " $* " ; echo ;      }
_fail       () { _black "  " ; _red    "[FAIL]" ; _black " $* " ; echo ;      }

# export these r20 functions

r20export   () { _black "  "; _blue "[vset]"; _black " $1 := [$2] "; echo; export $1=$2; }
r20source   () { [[ -f $1 ]] && _exec source $*    || _fail source $* }
r20clone    () { [ ! -d $2 ] && _exec git clone $* || _skip git clone  $* }

# do this on the first time through

[[ -z  ${R20_INIT_PID} ]] && {
    r20export R20_INIT_PID      $$
    r20export R20_INIT_TMP      /tmp/r20.${R20_INIT_PID}
    r20export R20_INIT_BIN      /tmp/r20.${R20_INIT_PID}/bin
    r20export R20_DEPTH         -1
    mkdir -p                    /tmp/r20.${R20_INIT_PID}/bin
}

# do this every time

r20export R20_DEPTH $(( $R20_DEPTH + 1 ))
for script in $(ls -1 ${ZDOTDIR}/[0-9]* | sort); do r20source $script; done
echo DEPTH: $R20_DEPTH

