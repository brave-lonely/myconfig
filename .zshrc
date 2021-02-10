# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

ZSH_THEME="apple"
# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git z vi-mode osx colored-man-pages docker  docker-compose)

# User configuration

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_191.jdk/Contents/Home
export HBASE_HOME=/usr/local/Cellar/hbase/1.2.2/libexec

export LDFLAGS="-L/usr/local/opt/openresty-openssl/lib"
export CPPFLAGS="-I/usr/local/opt/openresty-openssl/include"

export PATH="$HOME/bin:~/workspace/devtool/protoc-3.3.0-osx-x86_64/bin:/usr/local/opt/maven@3.5/bin:$PATH"
export PATH="/usr/local/sbin:/usr/local/opt/openresty-openssl/bin:/usr/local/opt/mysql@5.7/bin:$PATH"
# export PATH="/usr/local/opt/go@1.10/bin:$PATH"



export HOMEBREW_GITHUB_API_TOKEN="911874f2320928cc81014207a0e96ab7c0f1ac16"




# autojump configuration
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh




# jenv
#export PATH=$HOME/.jenv/bin:$PATH
#eval "$(jenv init -)"

source $ZSH/oh-my-zsh.sh


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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# pexists  lugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias  mongod="mongod --dbpath ~/data/mongo --logpath ~/data/mongo.log &"
alias  tldrl="tldr -p linux"
alias  tldrm="tldr -p osx"
alias  vblist="VBoxManage  list vms"
alias  vblist_run="VBoxManage  list runningvms"




# 开启termial代理
export http_proxy="http://127.0.0.1:4780"
export https_proxy="https://127.0.0.1:4780"

# 设置命令行vi模式
set -o vi 
# 设置zsh支持通配符 
setopt nonomatch


#export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


start_machine(){
   VBoxManage startvm $1 -type headless
}

stop_machine(){
  VBoxManage controlvm $1 poweroff
}

