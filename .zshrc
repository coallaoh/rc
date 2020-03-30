# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/user/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="maran"

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
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)

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
#
#

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#   Set Paths
#   ------------------------------------------------------------
   export PATH="$PATH:/usr/local/bin/"
   export PATH="$PATH:/Users/user/.local/bin"

#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
   export EDITOR=/usr/bin/gvim

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels

alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home


alias git='LANG=en_GB git'
alias gits='git status'
alias gita='git add -u'
alias gitc='git commit -m "Update."'
alias gitd='git diff'
#alias gitp='git push origin master'
alias gitp='git push origin HEAD'
alias gitu='git pull --all'
alias gitl='git log'
alias gitg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold red)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)<%an>%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias p=python
alias nsml=/Users/user/nsml/nsml
alias n=nsml
alias nr='nsml run -g 4 --cpus 5 -e'
alias ngv='nsml gpumonitor -n 100'
alias ng='nsml gpumonitor -n 20'
alias nsv='nsml status -v'
alias ns='nsml status'
alias nlo='nsml login'
alias nla='nsml login -t GrowAutoML'
alias nlc='nsml login -t ClovaImportantStuff'
alias motionphoto='python ~/Applications/samsung-motion-photo-splitter/splitter.py'
alias sshmpi='ssh joon@contact.mpi-inf.mpg.de'
alias bpedit='vim ~/.bash_profile'
alias nipansml='~/nipansml/nsml'

alias count='ll | wc -l'

alias tmpenv1='source activate n-digit-vis'
alias cdnsml='source activate nsml'
alias cdpyth37='source activate pyth'
alias cdpyth27='source activate pyth27'
alias cdgrowcuratenets27='source activate grow_curate_nets27'
alias cdgrowcuratenets35='source activate grow_curate_nets35'
alias cdgrowcuratenets37='source activate grow_curate_nets37'
alias sd='source deactivate'
alias installnsml='pip install git+https://oss.navercorp.com/nsml/nsml-local.git'
alias cdp38='source /Users/user/venv/p38/bin/activate'
alias cdp37='source /Users/user/venv/p37/bin/activate'

alias gitpp='git push https://google-brain.googlesource.com/_direct/coallaoh-uncertainty_embedding master'

count_r() {
  find $1 -type d -print0 | while read -d '' -r dir; do
    files=("$dir"/*)
    printf "%5d files in directory %s\n" "${#files[@]}" "$dir"
  done
}

dockerport=32779
alias sshgateway='ssh coallaoh@igw1.linecorp.com'
alias sshdocker='ssh root@cnsmlgpu102.nfra.io -p ${dockerport}'
alias sshinit='ssh-add ~/.ssh/id_rsa '
alias sshfsgrow='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/Grow ~/mnt/Grow -p ${dockerport}'
alias sshfsdeepmetric='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/Deep_metric ~/mnt/Deep_metric -p ${dockerport}'
alias sshunmountgrow='umount -f ~/mnt/Grow'
alias sshfsprobemb='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/probabilistic_embedding ~/mnt/probabilistic_embedding -p ${dockerport}'
alias sshfsbfe='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/bfe ~/mnt/bfe -p ${dockerport}'
alias sshfsziadprobemb='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/ziadprobemb ~/mnt/ziadprobemb -p ${dockerport}'
alias sshfsziadprobembworking='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/ziadprobembworking ~/mnt/ziadprobembworking -p ${dockerport}'
alias sshfswhiten='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/whiten ~/mnt/whiten -p ${dockerport}'
alias sshfsfaenet='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/FAENet ~/mnt/FAENet -p ${dockerport}'
alias sshfskoreanfood='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/korean_food_nipa_baseline ~/mnt/korean_food -p ${dockerport}'
alias sshfsremovebias='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/remove_bias ~/mnt/remove_bias -p ${dockerport}'
alias sshfscubval='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/CUB_Validation ~/mnt/CUB_Validation -p ${dockerport}'
alias sshfswsolcleanup='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/WSOL_cleanup ~/mnt/WSOL_cleanup -p ${dockerport}'
alias sshfstcpip='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/tcpip ~/mnt/tcpip -p ${dockerport}'
alias sshfsrebis='sshfs -o allow_other,defer_permissions,IdentityFile=~/.ssh/id_rsa root@cnsmlgpu102.nfra.io:/root/REBIS ~/mnt/REBIS -p ${dockerport}'


alias pdfcropall='find . -name "*.pdf" -exec pdfcrop {} {} \;'
alias cleanlatex='find . \( -name "*.log" -o -name "*.aux" -o -name "*.synctex.gz" \) -exec rm {} \;'
alias zshrc='vim /Users/user/.zshrc'

export PATH="/anaconda2/bin:$PATH"
export PATH="/Users/user/nsml:$PATH"  
