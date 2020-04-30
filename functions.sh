_block      () { tput setaf $1; [[ "$2" == "." ]] || tput setab $2; shift; shift; echo -n $*; tput sgr0; }
_colors     () { for f in $(seq 0 16); do for b in $(seq 0 16); do _block $f $b "$f/$b "; done; echo; done }
_black      () { _block  15   0  $*; }
_blue       () { _block  15   4  $*; }
_yellow     () { _block  16  11  $*; }
_green      () { _block   0  10  $*; }
_red        () { _block  15   9  $*; }
_skip       () { _block  10  15  " $* "; }
_doit       () { _block  16  15  " $* "; }
_note       () { _r20_prefix;               _yellow " $* "     ; echo; }
_star       () { _r20_prefix; _green " * "; _yellow "     $* " ; echo; }
_r20_try_source     () { [ -f $1 ]   && _r20_cmd_yes source $1    || _r20_cmd_bad source $1; }
_r20_show           () { _note "[$1] == [$(eval echo \$$1)]"; }
_r20_prefix         () { _black ${SCOPE}; _blue "[${R20PACKAGENAME}]"; }
_r20_cmd_yes        () { _green "  $ $* " ; echo; $* }
_r20_cmd_non        () { _green "  X $*" ; echo; }
_r20_cmd_bad        () { _r20_prefix ; _red   " X " ; _skip $* ; echo; }
_r20_export         () { _note "$1 <-- $2"; export $1=$2; }
_r20_enter          () { SCOPE="[$1]"; }
_r20_exit           () { unset SCOPE; }
r20export   () { _green "    $1 <-- $2 "; echo; export $1=$2; }
r20config   () { r20export R20_${R20PACKAGENAME}_CFG_$1 $2 }
r20source  () {
    [[ -f $1 ]]\
        && {_green  "  $ . $1 " ; echo ; . $1  } \
        || {_red   "  X . $1 " ; echo ;       }
}
r20clone      () { [ ! -d $2 ] && _r20_cmd_yes git clone $* || _r20_cmd_non clone $* }

