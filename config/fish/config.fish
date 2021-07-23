fish_add_path "$HOME/.local/bin" 

set -U fish_greeting ""

export VISUAL="nvim"
export EDITOR="nvim"
export BROWSER="google-chrome"

# ~/ Clean-up:
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

alias lf="lfrun"
#alias ls="ls"

# Abbreviations are aliases that expand
#if not set -q set_abbr
#    set -U set_abbr
    abbr g      "git"
    abbr gc     "git clone"
    abbr ea	"sudo emerge --ask"
    abbr eu	"sudo emerge --unmerge"
    abbr es	"sudo emerge --sync"
    abbr eas	"sudo emerge -avu system"
    abbr edc	"sudo emerge -avt --depclean"
    abbr eud	"sudo emerge --update --ask world"
    abbr eug	"sudo emerge -avuDN world"
    abbr sv	"sudo nvim"
#end

# Base16 Shell
if status --is-interactive
    set BASE16_SHELL "$HOME/.config/base16-shell/"
    source "$BASE16_SHELL/profile_helper.fish"
end

    set -U fish_color_normal            abb2bf
    set -U fish_color_command           c678dd
    set -U fish_color_quote             98c379
    set -U fish_color_redirection       56b6c2
    set -U fish_color_end               abb2bf
    set -U fish_color_error             e06c75
    set -U fish_color_param             e06c75
    set -U fish_color_comment           1e222a
    set -U fish_color_match             56b6c2
    set -U fish_color_search_match      61afef
    set -U fish_color_operator          c678dd
    set -U fish_color_escape            56b6c2
    set -U fish_color_cwd               e06c75
    set -U fish_color_autosuggestion    abb2bf
    set -U fish_color_valid_path        e06c75
    set -U fish_color_history_current   56b6c2
    set -U fish_color_selection         1e222a
    set -U fish_color_user              61afef
    set -U fish_color_host              98c379
    set -U fish_color_cancel            1e222a
    set -U fish_pager_color_completion  abb2bf
    set -U fish_pager_color_prefix      98c379
    set -U fish_pager_color_description abb2bf
    set -U fish_pager_color_progress    abb2bf
