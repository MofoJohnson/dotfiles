# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
    source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# oh my zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# update automatically without asking
zstyle ':omz:update' mode auto

ENABLE_CORRECTION="true"

plugins=(fzf zoxide zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR="vim"
else
    export EDITOR="nvim"
fi

# remove duplicates from history
setopt hist_ignore_all_dups
# vi mode
bindkey -v

# helpful aliases
alias  c="clear" # clear terminal
alias  l="eza -lh  --icons=auto" # long list
alias ls="eza -1   --icons=auto" # short list
alias ll="eza -lha --icons=auto --sort=name --group-directories-first" # long list all
alias ld="eza -lhD --icons=auto" # long list dirs
alias lt="eza --icons=auto --tree" # list folder as tree

# handy for when you make a change to zshrc
alias rsh="source $HOME/.zshrc && exec zsh"

# handy change dir shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# SHORTCUTS TO UPDATE PACKAGES
# cargo
# homebrew

# always mkdir a path (this doesn"t inhibit functionality to make a single dir)
alias mkdir="mkdir -p"

# quick access to neovim config
nvimconf() (
    cd "$HOME/.config/nvim" || exit
    nvim .
)

# pnpm
export PNPM_HOME="/Users/caolin.hughes/Library/pnpm"
case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# openjdk
export CPPFLAGS="-I/opt/homebrew/opt/openjdk/include"

# PATH
export PATH="/opt/homebrew/opt/rustup/bin:$PATH:"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
