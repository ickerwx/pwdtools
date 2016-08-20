## made by
##       _             _
##  ___ | |__    __ _ (_)  __ _  _ __           ___ 
## / __|| '_ \  / _` || | / _` || '_ \         / __|
##| (__ | | | || (_| || || (_| || | | |       | (__ 
## \___||_| |_| \__,_||_| \__, ||_| |_| _____  \___|
##                       |___/        |_____|



# pwd caching {{

alias sp='sp'
alias lp='lp'
alias dp='dp'

# PROMPT_COMMAND='pwd > "${XDG_RUNTIME_DIR}/.pwd_cache_d3fault"'

export PWD_DB=~/.pwd
mkdir -p $PWD_DB


function sp
{
    [ -z "$1" ] && sp start || ( dp "$1" ; ln -s "$(pwd)" "$PWD_DB/$1")
}

function lp
{
    [ -z "$1" ] && lp start || cd "$( readlink "$PWD_DB/$1" || echo Invalid Link )"
}

function dp
{
    [ -z "$1" ] && echo "Usage: dp link" || ( [ -e "$PWD_DB/$1" ] && rm "$PWD_DB/$1" )
}

[ -e "$PWD_DB/start" ] || sp start
# [ -e "$PWD_DB/start" ] && [ "$(pwd)" = "$HOME" ] && lp start
[ -e "$PWD_DB/start" ] && lp start

# gift :
alias meteo='curl -s http://wttr.in/$1'
alias gitls='git ls-tree -r -t origin/master --name-only'
