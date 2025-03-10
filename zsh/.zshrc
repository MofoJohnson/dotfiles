# path to your oh-my-zsh installation.
ZSH=/usr/share/oh-my-zsh/

# path to powerlevel10k theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# list of plugins used
plugins=( git sudo zsh-256color zsh-autosuggestions zsh-syntax-highlighting )
source $ZSH/oh-my-zsh.sh

# detect the AUR wrapper
if pacman -Qi yay &>/dev/null ; then
    aurhelper="yay"
elif pacman -Qi paru &>/dev/null ; then
    aurhelper="paru"
fi

function in {
    local -a inPkg=("$@")
    local -a arch=()
    local -a aur=()

    for pkg in "${inPkg[@]}"; do
        if pacman -Si "${pkg}" &>/dev/null ; then
            arch+=("${pkg}")
        else 
            aur+=("${pkg}")
        fi
    done

    if [[ ${#arch[@]} -gt 0 ]]; then
        sudo pacman -S "${arch[@]}"
    fi

    if [[ ${#aur[@]} -gt 0 ]]; then
        ${aurhelper} -S "${aur[@]}"
    fi
}

# helpful aliases
alias  c="clear" # clear terminal
alias  l="eza -lh  --icons=auto" # long list
alias ls="eza -1   --icons=auto" # short list
alias ll="eza -lha --icons=auto --sort=name --group-directories-first" # long list all
alias ld="eza -lhD --icons=auto" # long list dirs
alias lt="eza --icons=auto --tree" # list folder as tree
alias un="$aurhelper -Rns" # uninstall package
alias up="$aurhelper -Syu" # update system/package/aur
alias pl="$aurhelper -Qs" # list installed package
alias pa="$aurhelper -Ss" # list availabe package
alias pc="$aurhelper -Sc" # remove unused cache
alias po="$aurhelper -Qtdq | $aurhelper -Rns -" # remove unused packages, also try > $aurhelper -Qqd | $aurhelper -Rsu --print -

# handy change dir shortcuts
alias ..="cd .."
alias ...="cd ../.."
alias .3="cd ../../.."
alias .4="cd ../../../.."
alias .5="cd ../../../../.."

# always mkdir a path (this doesn"t inhibit functionality to make a single dir)
alias mkdir="mkdir -p"

# to customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Display Pokemon
pokemon-colorscripts --no-title -r 1,3,6

# zoxide
eval "$(zoxide init zsh)"

# vi mode
bindkey -v
# remove duplicates from history
setopt hist_ignore_all_dups

# bun completions
[ -s "/home/caolin/.bun/_bun" ] && source "/home/caolin/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/caolin/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/caolin/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/caolin/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/caolin/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/home/caolin/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

