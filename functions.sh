_block      () { tput setaf $1; [[ "$2" == "." ]] || tput setab $2; shift; shift; echo -n $*; tput sgr0; }
_colors     () { for f in $(seq 0 16); do for b in $(seq 0 16); do _block $f $b "$f/$b "; done; echo; done }
_black      () { _block  15   0  $*; }
_blue       () { _block  15   4  $*; }
_yellow     () { _block  16  11  $*; }
_green      () { _block   0  10  $*; }
_red        () { _block  15   9  $*; }

_r20_cmd_yes   () { _green "  [exec] $* " ; echo ; $* }
_r20_cmd_non   () { _green "  [SKIP] $* " ; echo ;    }
_r20_cmd_bad   () { _red   "  [FAIL] $* " ; echo ;    }

r20export   () { _black "  $1 <-- $2 "; echo; export $1=$2; }
r20source   () { [[ -f $1 ]] && _r20_cmd_yes . $* || _r20_cmd_bad . $* }
r20clone    () { [ ! -d $2 ] && _r20_cmd_yes git clone $* || _r20_cmd_non clone $* }

