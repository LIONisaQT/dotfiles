# Dotfiles

Assumes you are using zsh and have a `.zshrc` already.

## tl;dr

- Terminal: WezTerm
- Terminal theme: Dracula (controlled by WezTerm)
- Terminal prompt: Oh My Posh
- Plugins manager: Oh My Zsh

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
1. Install zsh plugins (I use autosuggestions and git-open).
1. Check out [Brewfile](./Brewfile) to see cool stuff you might wanna use.
1. Check out [`.zshrc`](./.zshrc) in case certain CLI should have alternative commands (e.g. replacing cd with zoxide the more correct way).
