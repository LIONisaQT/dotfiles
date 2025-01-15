# Dotfiles

Assumes you are using zsh and have a `.zshrc` already.

## tl;dr

- Terminal: [WezTerm](https://wezfurlong.org/wezterm/index.html)
- Terminal theme: [Dracula](https://draculatheme.com/) (controlled by WezTerm)
- Terminal prompt: [Oh My Posh](https://ohmyposh.dev/)
- Plugins manager: [Oh My Zsh](https://ohmyz.sh/)
  - Plugins:
    - [autocomplete](https://github.com/marlonrichert/zsh-autocomplete)
    - [autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
    - [git-open](https://github.com/paulirish/git-open)

## Terminal

### Install WezTerm

```sh
brew install --cask wezterm
```

### Install font

```sh
brew install font-meslo-lg-nerd-font
```

### Configure WezTerm

```sh
touch ~/.wezterm.lua
```

Copy pasta [.wezterm.lua](/.wezterm.lua). Note this uses [Dracula](https://draculatheme.com/) color theme.

## Terminal prompt

Powerlevel10k is on life support, rip.

### Install Oh My Posh

```sh
brew install jandedobbeleer/oh-my-posh/oh-my-posh
```

### Configure Oh My Posh

```sh
oh-my-posh config export --format yaml --output ./ohmyposh.yaml
```

Copy pasta [ohmyposh.toml](/ohmyposh.toml). Uses Terminal colors from WezTerm theming. See [Oh My Posh color docs](https://ohmyposh.dev/docs/configuration/colors) for more info.

### Use Oh My Posh

Make sure `.zshrc` contains the following:

```sh
if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/ohmyposh.toml)"
fi
```

## Recommended next steps

1. Set symlinks to your personal dotfiles repo.
1. Install zsh plugins.
1. Check out [Brewfile](./Brewfile) to see cool stuff you might wanna use.
1. Check out [`.zshrc`](./.zshrc) in case certain CLI should have alternative commands (e.g. replacing cd with zoxide the more correct way).
1. Check out [`.gitconfig`](./.gitconfig) for shortcuts you might like.
