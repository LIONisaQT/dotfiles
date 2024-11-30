# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

# ZSH_THEME="spaceship"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-autosuggestions git-open)

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

source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
