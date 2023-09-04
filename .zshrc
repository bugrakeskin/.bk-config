# adds figlet banner
figlet  -f small Welcome to
figlet  -f small KubixCloud

echo -e '\033[35mShell:\033[0m'

echo 'ZSH with OHMYZSH framework and Starship Cross-shell Promt -v1.5.7'
echo -e 'Theme designed & scripted by: \033[33mBuğra Keskin\033[0m - DevOps Engineer'
echo ' KubixCloud'
echo 'www.kubixcloud.com'
echo

# this comes from ubuntu /etc/update-motd.d

echo -e '\033[31mSystem:\033[0m'
[ -r /etc/lsb-release ] && . /etc/lsb-release

if [ -z "$DISTRIB_DESCRIPTION" ] && [ -x /usr/bin/lsb_release ]; then
        # Fall back to using the very slow lsb_release utility
        DISTRIB_DESCRIPTION=$(lsb_release -s -d)
fi

printf "%s (%s %s %s)\n" "$DISTRIB_DESCRIPTION" "$(uname -o)" "$(uname -r)" "$(uname -m)"

#!/bin/sh

stamp="/var/lib/update-notifier/updates-available"

[ ! -r "$stamp" ] || cat "$stamp"

find $stamp -newermt 'now-7 days' 2> /dev/null | grep -q -m 1 '.' || /usr/share/update-notifier/notify-updates-outdated
### Finish motd

#Shortcuts
echo -e '\033[31mShortcuts:\033[0m'
echo -e '\033[33m-c\033[0m: Clear Screen, \033[33m-reboot\033[0m: Reboot, \033[33m-shut\033[0m: Shutdown, \033[33m-mkcd\033[0m: Create a Folder and Go to Folder, \033[33m-rdir\033[0m: Remove Directory & All in it , \033[33m-agud\033[0m: Update & Dist-upgrade, \033[33m-agar\033[0m: Apt autoremove, \033[33m-la\033[0m: List Folder(detailed), \033[33m-treeh\033[0m: List Folder Tree view with sizes, \033[33m-yabs\033[0m: Yet Another Bench Script, \033[33m-findbig\033[0m: Find Biggest file in folder ' 

#test
#!/bin/bash

# Display the table data
printf "%-15s | %-20s | %10s\n" "Alias" "Command" "Note"
printf "%-15s | %-20s | %10s\n" "-c" "clear" "Clear Screen"
printf "%-15s | %-20s | %10s\n" "Jane Doe" "Assistant Manager" "80,000"
printf "%-15s | %-20s | %10s\n" "Bob Johnson" "Supervisor" "75,000"
printf "%-15s | %-20s | %10s\n" "Alice Williams" "Clerk" "45,000"

# Display the footer
echo "------------------------------"
printf "%s\n" "$FOOTER"


# Prompt changes 1-2-3-4-5
echo '\e[5 q' 

# Add a line before the output
preexec() { print "" }

#add line after command
  #precmd() { print "" }

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME=""

# add plugins
plugins=( z  extract sudo zsh-interactive-cd ubuntu history  command-not-found systemd copyfile )

#export dump files
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST 

source $ZSH/oh-my-zsh.sh

alias c="clear"
alias chistory= "history -c"
alias m="sudo micro"
alias shut="sudo shutdown now"
alias star="micro ~/github/.bk-config/starship.toml"
alias ohmyzsh="micro ~/github/.bk-config/.zshrc"
alias findbig="sudo du -hsx * | sort -rh | head -10"
alias treeh="tree --du -h"
alias exitto='echo "Good-Bye!, Press <z> for ZHS" && exit'
alias update="cd '$HOME/github/.bk-config/' && git pull && cd '$HOME' && exitto"
alias yabs="curl -sL yabs.sh | bash -s -- -fg"
alias reboot="sudo reboot"
alias mkcd='function _mkcd() { mkdir -p "$1" && cd "$1"; }; _mkcd'
alias rdir='sudo rm -rf'

export STARSHIP_CONFIG=~/github/.bk-config/starship.toml
eval "$(starship init zsh)"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

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


# PS1=$'\n\n\e[2A'"$PS1"

#PROMPT_COMMAND='printf "Exit code: %s\n" $?'
