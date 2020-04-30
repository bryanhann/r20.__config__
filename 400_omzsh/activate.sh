HERE=$(dirname $(grealpath $0))
r20export ZSH ${XDG_X_BUILD}/__omzsh__
#--------------------------------------------------
# Install OMZSH
#--------------------------------------------------
[ -d $ZSH ] || {
    echo INSTALLING OMZSH
    $(dirname $(grealpath $0))/vendor/install.sh --unattended
}
#--------------------------------------------------
# Configure OMZSH
#--------------------------------------------------
#ZSH_THEME="robbyrussell"   # frisk
#ZSH_THEME="sunrise"        # shows last two components of cdw
#ZSH_THEME="smt"            # chinese
#ZSH_THEME="muse"           # light
#ZSH_THEME="agnoster"       #
#ZSH_THEME="fino-time"      #
#ZSH_THEME="gnzh"           # based on bira. very good two liner. Very clear full cwd.
#ZSH_THEME="bira"           #
#ZSH_THEME="random"         #
ZSH_THEME=gnzh
export plugins=(git git-prompt virtualenv virtualenvwrapper)
source ${ZSH}/oh-my-zsh.sh

