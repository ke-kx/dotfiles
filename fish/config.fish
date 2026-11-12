# Personal fish config.
# Source of truth: ~/repos/dotfiles/fish/config.fish, symlinked to ~/.config/fish/config.fish (see install.sh).

# Vi mode (as in the old zshrc). Set before the Garuda defaults so their !! / !$ bindings land in insert mode.
set -g fish_key_bindings fish_vi_key_bindings

# Garuda defaults: starship, eza/bat/ugrep aliases, !! and !$, mirror/pacman helpers ...
# Updated by the garuda-fish-config package. Don't copy it here; override below.
source /usr/share/garuda/garuda-fish-config/config.fish

## Personal
set -gx EDITOR vim
set -gx VISUAL vim
set -gx SYSTEMD_EDITOR vim

fish_add_path -a ~/.lmstudio/bin   # LM Studio CLI (lms)

if status is-interactive
    # Unknown command -> suggest the pacman package that provides it
    source /usr/share/doc/find-the-command/ftc.fish

    # zoxide: `z foo` jumps to a frequently used dir matching foo (replaces z / wd from oh-my-zsh)
    type -q zoxide; and zoxide init fish | source

    # List the directory after every cd (the old zsh chpwd hook)
    function __ls_after_cd --on-variable PWD
        eza --group-directories-first
    end

    # Abbreviations on top of jhillyerd/plugin-git (fish_plugins). It is an older oh-my-zsh port:
    # gcm = git commit -m, gds = diff --stat, and some names (gcmsg, gpsup, ggpush, gswm) are missing.
    abbr -a gdc -- 'git diff --cached'
    abbr -a gfom -- 'git fetch origin master:master'
    abbr -a gcmsg -- 'git commit -m'
    abbr -a gpsup -- 'git push --set-upstream origin (__git.current_branch)'
    abbr -a naon -- nano
    abbr -a cd.. -- 'cd ..'

    # Greeting (Garuda default). Comment out to disable.
    __garuda_fastfetch
end
