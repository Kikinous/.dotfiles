# oh-my-zsh {{{1
# Setup {{{2
export ZSH=/Users/julien/.oh-my-zsh
# Theme {{{2
# Look in ~/.oh-my-zsh/themes/
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"                         #theme et couleurs, mais couleurs changées ci-dessous
# Update {{{2
# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# General Feature: {{{1
# Completion {{{2
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"


# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Color base16 {{{2
# https://github.com/chriskempson/base16-shell
# $base16(tab completion)
BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"
alias color="echo $BASE16_THEME"
# Divers {{{2
# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"
#
# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Commandes vi dans zsh
# set -o vi

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man-pages osx)

# User configuration {{{1
# Environnement Variables {{{2
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
export PATH=/Library/Frameworks/Mono.framework/Versions/Current/bin/:${PATH}
# export MANPATH="/usr/local/man:$MANPATH"
export PKG_CONFIG_PATH="/opt/local/lib/pkgconfig"
#
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Commandes UNIX {{{2
# Text Editor {{{3
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ls {{{3
# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Compilation flags {{{3
# export ARCHFLAGS="-arch x86_64"

# history {{{3
# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"
#
# ssh {{{3
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Aliases {{{2
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias stat="stat -x"
alias tree="tree -C"
alias tree="tree -L 4 ; echo 'ATTENTION alias : max level = 4'"

# Shell scripts {{{1
# oh-my-zsh.sh {{{2
source $ZSH/oh-my-zsh.sh
