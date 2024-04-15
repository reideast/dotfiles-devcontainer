# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh


export TERM="xterm-256color"

########################################################################
###                     theme for oh-my-zsh                          ###
########################################################################
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
#ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# https://github.com/bhilburn/powerlevel9k
# https://github.com/bhilburn/powerlevel9k/wiki/Stylizing-Your-Prompt
# https://github.com/bhilburn/powerlevel9k/wiki/Show-Off-Your-Config
# https://github.com/bhilburn/powerlevel9k/wiki

# git clone into ~/.oh-my-zsh/custom/themes - https://github.com/romkatv/powerlevel10k.git
ZSH_THEME="powerlevel10k/powerlevel10k"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

########################################################################
###            general settings for zsh/oh-my-zsh                    ###
########################################################################

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"
function title() {
	echo -ne "\e]1;$1\a"
}
# alias title='title'
# export -f title

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

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
plugins=(
  # git zsh-autosuggestions zsh-syntax-highlighting vi-mode vagrant
  git vi-mode
)
# zsh-autosuggestions, installation see: https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md

# Run oh-my-zsh
source $ZSH/oh-my-zsh.sh

# End oh-my-zsh config



# User configuration

# Hide username@hostname when logged in as the default user
if [[ -v DEV_ENV_MAC ]]; then
    export DEFAULT_USER=andrewe
elif [[ -v DEV_ENV_WIN ]]; then
    export DEFAULT_USER=deskase
fi

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
if [[ -e /usr/local/bin/nvim ]]; then
    export EDITOR='/usr/local/bin/nvim'
else
    export EDITOR='vim'
fi

# Open less (and git diff) in color-coded full less, unless its short, then just output and quit. See: https://stackoverflow.com/a/18781512
# -i is to use :set smartcase for searches 
export LESS="$LESS -FRXKi"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# disable tty control keys so Ctrl+S and Ctrl+Q can be used for commands
stty -ixon

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#bash_profile by Andrew East 180108
#export PS1="\u@\h:\w\n$ "
#export PS2="$ "
#export CLICOLOR=1
#export LSCOLORS=ExFxBxDxCxegedabagacad

# Colors, can use within echo -e "Regular ${BLUE}I'm blue!${NOCOLOR} I'm regular again"
export NOCOLOR='\033[0m'
export BLACK='\033[0;30m'
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export ORANGE='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHTGRAY='\033[0;37m'
export DARKGRAY='\033[1;30m'
export LIGHTRED='\033[1;31m'
export LIGHTGREEN='\033[1;32m'
export YELLOW='\033[1;33m'
export LIGHTBLUE='\033[1;34m'
export LIGHTPURPLE='\033[1;35m'
export LIGHTCYAN='\033[1;36m'
export WHITE='\033[1;37m'
function test_colors() {
  echo -e "${BLACK}BLACK${NOCOLOR}"
  echo -e "${RED}RED${NOCOLOR}"
  echo -e "${GREEN}GREEN${NOCOLOR}"
  echo -e "${ORANGE}ORANGE${NOCOLOR}"
  echo -e "${BLUE}BLUE${NOCOLOR}"
  echo -e "${PURPLE}PURPLE${NOCOLOR}"
  echo -e "${CYAN}CYAN${NOCOLOR}"
  echo -e "${LIGHTGRAY}LIGHTGRAY${NOCOLOR}"
  echo -e "${DARKGRAY}DARKGRAY${NOCOLOR}"
  echo -e "${LIGHTRED}LIGHTRED${NOCOLOR}"
  echo -e "${LIGHTGREEN}LIGHTGREEN${NOCOLOR}"
  echo -e "${YELLOW}YELLOW${NOCOLOR}"
  echo -e "${LIGHTBLUE}LIGHTBLUE${NOCOLOR}"
  echo -e "${LIGHTPURPLE}LIGHTPURPLE${NOCOLOR}"
  echo -e "${LIGHTCYAN}LIGHTCYAN${NOCOLOR}"
  echo -e "${WHITE}WHITE${NOCOLOR}"
}
# colors, for oh-my-zsh, can use within theme colour variables
alias get_color_nums='for code ({000..255}) print -P -- "$code: %F{$code}This is how your text would look like%f"'
alias get_color_nums_basic='for code ({000..015}) print -P -- "$code: %F{$code}This is how your text would look like%f"'

alias sz='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias vzp='vim ~/.p10k.zsh' # Edit oh-my-zsh theme file
# alias vzgr='vim ~/.zsh-alias-gradle'
alias vzd='vim ~/.zsh-alias-docker'
alias vzg='vim ~/.gitconfig'
alias vzga='vim ~/.zsh-alias-git'
alias vzt='vim ~/.zsh-alias-terraform'
# alias vzv='vim ~/.zsh-alias-virtualbox'
alias vzi='vim ~/.zsh-vi-input'
alias dotfiles='cd ~/.dotfiles'

alias cp='cp -iv'
alias mv='mv -iv'
alias mkdir='mkdir -pv'
function touchdir() { mkdir $1 && $_ }
alias ls='ls -p'
alias ll='ls -FGlAhp'
alias llt='ll -tr'
alias lldir='ll | grep "^d"'
alias cd..='cd ..'
alias ~='cd ~'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

if [[ -v DEV_ENV_MAC ]]; then
    alias cat=bat
    export BAT_CONFIG_PATH="~/.bat.conf"

    alias vim='nvim -u ~/.vimrc'  # Load NeoVim with .vimrc loaded from the _expected_ location
    alias vi='vim'
    alias vi-no-really-vi='/usr/bin/vi'

    # Update PATH to include MacOS Library/python2.7
    # This was required for ansible, which was installed with: pip install --user ansible
    ## DEBUG: Disabled to use pyenv instead. Still need to test if ansible still works!!
    # export PATH=$HOME/Library/Python/2.7/bin:$PATH

    # Update PATH to include python3, which was installed as part of Google Cloud Tools
    export PATH=$HOME/Library/Python/3.8/bin:$PATH

    # Use pyenv to manage python versions
    # eval "$(pyenv init -)"
    
    # find helpers
    # fzf: https://github.com/junegunn/fzf and installed through homebrew: http://sourabhbajaj.com/mac-setup/iTerm/fzf.html
    # By John Frizzell:
    alias find="fzf --preview 'head -100 {}'"
    # By John Frizzell:
    alias search=mysearchfunc
    mysearchfunc () {
        if [ -z "$2" ]
        then
            dir=.
        else
            dir=$2
        fi
        grep --color=auto --exclude-dir={.bzr,CVS,.git,.hg,.svn} -irl $1 $dir
    }

    ssh-aa-add-all-andrew() {
        echo "Reset all ssh-agent identities, leaving only those needed for logging into Ansible automation hosts (for docker swarm, currently)?"
        if prompt_confirm; then
            eval $(ssh-agent)  # Ensures the agent is started

            ssh-add -D  # Delete any keys that are already loaded

            # Add my ssh keys
            ssh-add -K \
                ~/.ssh/core_infra_id_ed25519 \
                ~/.ssh/gitlab_andrewe_id_ed25519

            ssh-add -l  # List to confirm
        fi
    }
fi


# prompt_confirm: Returns process sucess (0) if users says "yY"
# see: https://stackoverflow.com/questions/1885525/how-do-i-prompt-a-user-for-confirmation-in-bash-script
# Usage example:
#   echo "Do you want to execute dangerous_command?"
#   if prompt_confirm; then
#       dangerous_command
#   fi
# Usage example, inline, with no prompt:
#   prompt_confirm && dangerous_command
function prompt_confirm() {
  #read "?Do you want to continue (y/N)? " -k
  read -q "?Do you want to continue (y/N)? " # ZSH-specific prompt command, expecting one char, Y or N. Returns 0 if yY
  local ret=$?
  echo # Write out a \n, so the next command doesn't jam together
  return $ret
}

# Note: If you're in non-interactive environment with no .zshrc (such as an in-line script), here's a more compatible version:
# alise gitpushforce="!f() { echo; read -p 'Are you sure you want to force push? (y/N)? ' -n 1 -r; echo; if [[ $REPLY =~ ^[Yy]$ ]]; then git push --force-with-lease; else echo 'Cancelled the git push'; fi }; f"

if [[ -v DEV_ENV_MAC ]]; then
    export PATH=/Users/${DEFAULT_USER}/bin:$PATH

    source ~/.zsh-java  # Mainly, sets JAVA_HOME

    # killgrep - kill the first process found by searching through its full ps -f ouput
    #            This use case isn't covered by pkill or pgrep, because they only search for the base process name
    #            e.g. pkill java would work, but pkill net.andreweast.testjava.MyClass would not
    function killgrep() {
      if [[ "$#" -eq 0 ]]; then
        echo "Usage killgrep <description of process>, which kills the first process it finds"
        return 1
      fi
      # condensed version: export foundID=`ps -axf | grep EmailServerDaemon | awk 'NR==1{print $2}' | cut -d' ' -f1` && kill $foundID
      echo -e "${CYAN}Before${NOCOLOR}"
      ps -axf | grep $1
      local foundID=`ps -axf | grep $1 | awk 'NR==1{print $2}' | cut -d' ' -f1`
      # ps: -a all users, -x include headless processes, -f extra details
      # awk: NR==1 the first match, {print $2} export the second column
      # cut: a command to take selected parts of input and put it on stdout. -d delimeter, -f fields -f1 the first one found
      echo -e "Will kill pid ${CYAN}$foundID${NOCOLOR}"
      if prompt_confirm; then
        kill $foundID
        echo -e "${CYAN}After${NOCOLOR}"
        ps -axf | grep $1
      fi
    }

    # Show/hide hidden files in the Finder (see: https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/osx/osx.plugin.zsh )
    alias showfiles="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
    alias hidefiles="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"
fi

source ~/.zsh-alias-git

if [[ $(which terraform) ]]; then
    source ~/.zsh-alias-terraform
fi

if [[ $(which docker) ]]; then
    source ~/.zsh-alias-docker
fi

# Switch ZSH Readline to vi mode
# Disabled because: Switch to using oh-my-zsh/plugins/vi-mode:
# source ~/.zsh-vi-input
# export KEYTIMEOUT=1 # speeds up switching between modes
# Doesn't work: v no longer opens the editor, but it doesn't start Visual-Mode either: bindkey -r -M vicmd 'v'
# bindkey -M vicmd 'v' visual-mode   # Remove vi-mode plugin's bind that opens vim when v is pressed. Newer versions of ZSH have a fine Visual-Mode, and don't need this hack
#   To find out what the correct command to launch visual mode, used `bindkey` which lists all bindings. But that wasn't for vi-cmd-mode, so used `bindkey -M vicmd` which lists all vi-cmd-mode bindings

if [[ -v DEV_ENV_ZR ]]; then
    # The next line updates PATH for the Google Cloud SDK.
    if [ -f '/Users/andrewe/bin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/andrewe/bin/google-cloud-sdk/path.zsh.inc'; fi
    # The next line enables shell command completion for gcloud.
    if [ -f '/Users/andrewe/bin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/andrewe/bin/google-cloud-sdk/completion.zsh.inc'; fi

    # save the path to the monorepo as a variable
    export STARTERVIEW=${HOME}/ziprecruiter

    # put the monorepo's bin dir in the PATH
    export PATH=${STARTERVIEW}/bin:$PATH

    # Set alias to ZAM script to assist login to AWS
    alias zamu="${STARTERVIEW}/bin/laptop/macos/zamu.scpt"

    alias mi='cd ~/mi'
fi

if [[ -v DEV_ENV_RES ]]; then
    source ~/.zsh-alias-gradle

    source ~/.zsh-alias-virtualbox

    # Create aliases to use IBM Java as JAVA_HOME
    # removed the following source, in favor of just putting the following lines here:
    # source ~/.ibm_jdk_config
    alias ibmj8="export JAVA_HOME=/usr/local/lib/jvm/ibm-jdk-8"
    # alias j7="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_181.jdk/Contents/Home"
    alias macj8="export JAVA_HOME=$(/usr/libexec/java_home)"
    alias adoptopenjdk11="export JAVA_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home'"
    # There is a new ENV defined: JAVA_11_HOME, which allows jdk11-based tasks to run WITHOUT changing the global java version
    export JAVA_11_HOME='/Library/Java/JavaVirtualMachines/adoptopenjdk-11-openj9.jdk/Contents/Home'
    # Moved lower in the file! Why? Seems like there needs to be some artificial delay between sourcing the file with the aliases and using it:
        # ibmj8

    # For running NPM commands directly (not through gw :client-webapp:npmExec
    source ~/.gradle/gradle.properties
    export ARTIFACTORY_USERNAME=${artifactory_username}
    export ARTIFACTORY_NPM_REGISTRY=${artifactory_npm_registry}
    export ARTIFACTORY_NPM_AUTH=${artifactory_npm_auth}

    # Node Version Manager NVM, see https://github.com/creationix/nvm
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
    [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

    # Fix for client-webapp error of FATAL ERROR: CALL_AND_RETRY_LAST Allocation failed - JavaScript heap out of memory
    export NODE_OPTIONS='--max-old-space-size=8192'
fi

# remove oh-my-zsh command that shares history between all open tabs/windows
setopt no_share_history
unsetopt inc_append_history
unsetopt share_history

if [[ -v DEV_ENV_RES ]]; then
    # Configure Java to run IBM Java 1.8
    ibmj8

    # Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
    export PATH="$PATH:$HOME/.rvm/bin"

    # Load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
fi


# REMOVED: In favour of the oh-my-zsh plugin version
# Enable in-line syntax highlighting
# MUST BE THE LAST LINE OF .zshrc

# DO NOT ADD ANYTHING AFTER syntax-highlighting
# if [[ -v DEV_ENV_RES ]]; then
#     source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# fi

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform

