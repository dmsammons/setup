export DEV_HOME="$HOME/software"

source ~/.git-prompt.sh
PS1='\w$(__git_ps1 " (%s)")\$'
# Tab completion for branch names
source ~/.git-completion.bash
