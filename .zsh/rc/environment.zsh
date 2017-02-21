setopt ALL_EXPORT
HISTFILE=~/.history
HISTSIZE=16384
SAVEHIST=16384
EDITOR=vim
TZ=Europe/Brussels
GPGKEY=69EA19A0
PATH=$PATH:/home/jfroche/.local/bin

local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"
local date="%{$fg[%D]%}%D$rs"
local time="%{$fg[%@]%}%D{%H:%M:%S}$rs"
RPS1="${return_code} %F{yellow} ${time}%f"
http_proxy=http://172.17.0.1:8118
https_proxy=http://172.17.0.1:8118
