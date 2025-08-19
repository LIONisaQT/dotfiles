# ============================
# Oh My Zsh configuration
# ============================

export ZSH="$HOME/.oh-my-zsh"

# Disable marking untracked files as dirty to speed up large repos
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Plugins
plugins=(git zsh-autosuggestions git-open)

# Syntax highlighting
if command -v brew &>/dev/null; then
  source "$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# ============================
# User Configuration
# ============================

# Bat theme
export BAT_THEME="TwoDark"

# Aliases
alias ls="eza --icons=auto --long --header --group-directories-first --no-permissions"
alias zreload="source ~/.zshrc"

# ============================
# NVM (Node Version Manager)
# ============================
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # Load NVM
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # Load NVM bash completion

# ============================
# Zoxide for smarter navigation
# ============================
eval "$(zoxide init --cmd cd zsh)"

# ============================
# Oh My Posh (prompt theming)
# ============================
if [[ "$TERM_PROGRAM" != "Apple_Terminal" ]]; then
  eval "$(oh-my-posh init zsh --config $HOME/ohmyposh.toml)"
fi

# ============================
# FZF (fuzzy finder)
# ============================
eval "$(fzf --zsh)" # fzf keybinds and fuzzy autocomplete

# ============================
# Performance / quality of life
# ============================

# Faster prompt rendering
DISABLE_AUTO_TITLE="true"
HISTFILE="$HOME/.zsh_history"
HISTSIZE=5000
SAVEHIST=5000

# Enable command correction
setopt CORRECT

# Share history across sessions
setopt SHARE_HISTORY

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# ============================
# Optional: load custom scripts
# ============================
# for file in ~/.zshrc.d/*.zsh; do source "$file"; done 2>/dev/null
