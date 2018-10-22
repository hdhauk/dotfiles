# If you come from bash you might have to change your $PATH.
export GOPATH=$HOME/Documents/go/

export CDPATH=$GOPATH/src

source ~/.passwords

# Functions/aliases
alias prettyjson="python -m json.tool"
alias myip="curl http://ipecho.net/plain; echo"


# OS Specific
if [[ $(uname) == 'Linux' ]]; then
	alias zshconfig="nano ~/.zshrc"
	alias update="sudo apt update && sudo apt upgrade -y"
	ZSH_THEME="robbyrussell"
	alias pbcopy='xclip -selection clipboard'
	alias pbpaste='xclip -selection clipboard -o'

	function open () {
		xdg-open "$*" 1>/dev/null 2>/dev/null &
	}
elif [[ $(uname) == 'Darwin' ]]; then
	alias zshconfig="code ~/.zshrc"
	alias update="brew update && brew upgrade && brew cu -facy"
	alias restic-sandbox="restic -r sftp:qnap:/share/sandbox/restic --password-file /Volumes/TheSandbox/restic_password.txt"
	alias restic-toshiba="restic -r sftp:qnap:/share/USBDisk1/backup/restic"
	alias restic="restic -r sftp:qnap:/share/backup/restic"
	ZSH_THEME="robbyrussell"
fi

# Host specific
if [[ $(hostname) == 'tower-ubuntu' ]]; then
	export PATH=$GOPATH/bin:/opt/local/bin:/opt/local/sbin:~/Documents/cpp/UnrealEngine/Engine/Binaries/Linux:/home/linuxbrew/.linuxbrew/bin:$PATH
	alias update="sudo apt update && sudo apt upgrade -y && brew update && brew upgrade"
	alias restic="restic -r sftp:qnap:/share/backup/restic"
	alias restic-toshiba="restic -r sftp:qnap:/share/USBDisk1/backup/restic"
	alias screenshot="scrot -s ~/Pictures/screenshots/$(date -u +"%Y-%m-%dT%H:%M:%SZ").png"
	source /opt/ros/melodic/setup.zsh
fi



# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=7

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

plugins=(git)
source $ZSH/oh-my-zsh.sh


