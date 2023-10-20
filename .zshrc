# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/zap-prompt"
plug "zsh-users/zsh-syntax-highlighting"
plug "MAHcodes/distro-prompt"

# Load and initialise completion system
autoload -Uz compinit
compinit


# alias 
alias n="nvim"
alias nw="n ~/notes/index.norg"
alias trashr="trash-restore"
alias trashe="trash-empty"
alias trashl="trash-list"
alias zup="sudo zypper cc -a && sudo zypper -vvv ref -f && sudo zypper -vvv dup --details"
