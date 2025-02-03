# ZSH 
source $HOME/.config/zsh/zsh-config

## ALIASES
alias c='clear'
alias exitcode='~/scripts/interpret_exit_code.sh'
alias copy='xclip -sel clip'
alias paste='xclip -selection clipboard -o'
alias n='/home/asritha/pkg_src/nnn -e'
alias h='cd ~'
alias tf='terraform'
alias f='firefox &'
alias g='goland . > /dev/null 2>&1 &'
alias i='idea . > /dev/null 2>&1 &'
alias gp='gcloud projects list'
alias vim='nvim' 
alias sc='grim -g "$(slurp)"' 
alias n='nnn'
alias l='nnn -P l' #program launcher
alias csc='find . -maxdepth 1 -type f -name "*_grim.png" -exec rm -f {} +'
[ -f ~/.kubectl_aliases ] && source ~/.kubectl_aliases



## PATH 
export PATH="$PATH:/%PYTHON%;"

## SSH-AGENT 
eval "$(ssh-agent -s)" > /dev/null 2>&1
ssh-add ~/.ssh/github > /dev/null 2>&1

## NNN
set --export NNN_FIFO "/tmp/nnn.fifo"
export NNN_PLUG='l:launch'

## VI MODE 
bindkey -v 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/asritha/google-cloud-sdk/path.zsh.inc' ]; then . '/home/asritha/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/asritha/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/asritha/google-cloud-sdk/completion.zsh.inc'; fi


source /usr/share/nvm/init-nvm.sh

plugins=(virtualenv)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status virtualenv)
