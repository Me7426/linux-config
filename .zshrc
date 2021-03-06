# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
#===================================

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/muzi/.config/oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"
#ZSH_THEME=random
#ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-completions)

autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

[[ -s /home/muzi/.config/autojump/etc/profile.d/autojump.sh ]] && source /home/muzi/.config/autojump/etc/profile.d/autojump.sh
#eval export PATH="/home/muzi/.pyenv/shims:${PATH}"
#export PYENV_SHELL=zsh
#command pyenv rehash 2>/dev/null
#pyenv() {
#  local command
#  command="${1:-}"
#  if [ "$#" -gt 0 ]; then
#    shift
#  fi
#
#  case "$command" in
#  rehash|shell)
#    eval "$(pyenv "sh-$command" "$@")";;
#  *)
#    command pyenv "$command" "$@";;
#  esac
#}
#
#
#eval "$(pyenv init -)"



#Fix ssh Can't delete and backspace
#export TERM=vt100
#alias ssh='export TERM=vt100 && ssh $1'



export EDITOR=/usr/bin/nvim
export FZF_DEFAULT_COMMAND='fd --type f'
#export GTK_IM_MODULE=fcitx
#export QT_IM_MODULE=fcitx
#export XMODIFIERS="@im=fcitx"

export NODE_PATH=/home/muzi/.local/lib/node_modules


#===alias===
#TERM=xterm
alias mv="mv -i"
alias rename=perl-rename
alias li="ls -l | grep ^-|wc -l"
alias ,up="sudo pacman -Syu"
alias ,p='proxychains -q'
alias emc='nohup wine ~/桌面/InletexEMC-1.2.exe > /dev/null 2>&1 &'
alias pid='ps -ef | grep -v grep | grep '
alias df='df -h'
alias free='free -h'
alias ping='ping -n'
alias t='termite > /dev/null 2>&1 &!'
alias tp='trash-put'
####proxy####
alias ,p1='proxychains -f /etc/proxychains.conf'
alias ,p2='proxychains -f /etc/proxychains2.conf'
alias ,p3='proxychains -f /etc/proxychains3.conf'
####bluetoothctl#####
alias ce="echo 'power on \n  connect 38:18:4C:55:93:F0'| bluetoothctl"
alias de="echo 'power on \n  disconnect 38:18:4C:55:93:F0'| bluetoothctl"



#eval $(thefuck --alias)
#alias f=fuck


#Auto logout when login at tty
if [ `tput colors` != "256" ];then
        TMOUT=600
	ZSH_THEME="robbyrussell"
	LANG=en_US.UTF-8
else
	TMOUT=0
	source /home/muzi/下载/Temp/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
	[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
	source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
fi
export SSH_ASKPASS=/usr/bin/qt4-ssh-askpass
