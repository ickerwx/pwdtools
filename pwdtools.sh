## made by
##       _             _
##  ___ | |__    __ _ (_)  __ _  _ __           ___ 
## / __|| '_ \  / _` || | / _` || '_ \         / __|
##| (__ | | | || (_| || || (_| || | | |       | (__ 
## \___||_| |_| \__,_||_| \__, ||_| |_| _____  \___|
##                       |___/        |_____|

alias gitls='git ls-tree -r -t origin/master --name-only'

alias mirrors='sudo pacman-mirrors -g'

# pwd caching {{

alias spwd='spwd'
alias lpwd='lpwd'
alias dpwd='dpwd'

# PROMPT_COMMAND='pwd > "${XDG_RUNTIME_DIR}/.pwd_cache_d3fault"'

export PWD_DB=~/.pwd/ln
mkdir -p $PWD_DB


function spwd
{
    [ -z "$1" ] && spwd start || ( rm "$PWD_DB/$1" ; ln -s "$(pwd)" "$PWD_DB/$1")
}

function lpwd
{
    [ -z "$1" ] && lpwd start || cd "$( readlink "$PWD_DB/$1" || echo Invalid Link )"
}

function dpwd
{
    [ -z "$1" ] && echo "Usage: dpwd link" || ( [ -e "$PWD_DB/$1" ] && rm "$PWD_DB/$1" )
}

[ -e "$PWD_DB/start" ] || spwd start
# [ -e "$PWD_DB/start" ] && [ "$(pwd)" = "$HOME" ] && lpwd start
[ -e "$PWD_DB/start" ] && lpwd start

alias meteo='curl -s http://wttr.in/$1'
alias network='lsof -Pan -i tcp -i udp'

