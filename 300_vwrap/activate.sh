#--------------------------------------------------
# Configure VWRAP
#--------------------------------------------------
r20export VIRTUALENVWRAPPER_HOOK_DIR  ${HOME}/vwrap/hooks
r20export WORKON_HOME                 ${HOME}/vwrap/workon_home
r20export PROJECT_HOME                ~/dev
#[[ $R20_DEPTH = 0 ]] && r20pip_install virtualenvwrapper
source virtualenvwrapper.sh

