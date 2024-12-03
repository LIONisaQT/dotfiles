export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="spaceship"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-autosuggestions git-open)
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

source $ZSH/oh-my-zsh.sh

# User configuration

export BAT_THEME="TwoDark"

alias ls="eza --icons=auto --long --header --group-directories-first --no-permissions"
alias zreload="source ~/.zshrc"

function __gitbranchname()
{
  branch=$(git symbolic-ref HEAD 2> /dev/null | awk 'BEGIN{FS="heads/"} {print $NF}')
  if [[ $branch == "" ]];
  then
    :
  else
    echo \'$branch\'
  fi
}

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

eval "$(zoxide init --cmd cd zsh)" # Use zoxide instead of cd without creating alias

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/ohmyposh.toml)"
fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
