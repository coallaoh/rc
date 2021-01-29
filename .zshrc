home_folder="/Users/user"
export ZSH=${home_folder}"/.oh-my-zsh"
ZSH_THEME="maran"
plugins=(
	git
	zsh-syntax-highlighting
	zsh-autosuggestions
)
source $ZSH/oh-my-zsh.sh

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

export PATH="$PATH:/usr/local/bin/"
export PATH="$PATH:"${home_folder}"/.local/bin"

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
alias gitp='git push origin HEAD'
alias gitu='git pull --all'
alias gitl='git log'
alias gitg="git log --graph --abbrev-commit --decorate --date=relative --format=format:'%C(bold red)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(cyan)<%an>%C(reset)%C(bold yellow)%d%C(reset)' --all"

alias p=python

alias count='ll | wc -l'

count_r() {
  find $1 -type d -print0 | while read -d '' -r dir; do
    files=("$dir"/*)
    printf "%5d files in directory %s\n" "${#files[@]}" "$dir"
  done
}

alias pdfcropall='find . -name "*.pdf" -exec pdfcrop {} {} \;'
alias cleanlatex='find . \( -name "*.log" -o -name "*.aux" -o -name "*.synctex.gz" \) -exec rm {} \;'
alias zshrc='vim '${home_folder}'/.zshrc'
