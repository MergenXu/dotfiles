fish_add_path "$HOME/.local/bin" 

set -x XDG_CONFIG_HOME "$HOME/.config"
set -x XDG_DATA_HOME "$HOME/.local/share"
set -x XDG_CACHE_HOME "$HOME/.cache"




set -x QT_QPA_PLATFORMTHEME qt5ct
set -x QT_QPA_PLATFORM wayland
set -x QT_WAYLAND_DISABLE_WINDOWDECORATION 1
set -x SDL_VIDEODRIVER wayland
set -x XDG_CURRENT_DESKTOP sway
set -x XDG_SESSION_TYPE wayland
set -x _JAVA_AWT_WM_NONREPARENTING 1
set -x GDK_BACKEND wayland
set -x LIBSEAT_BACKEND logind

set LANG en_US.UTF-8
set XKB_DEFAULT_LAYOUT us
set XKB_DEFAULT_VARIANT colemak


set -x EDITOR nvim
set -x VISUAL $EDITOR
set -x TERMINAL kitty



#alias sudo='sudo'
#alias vim='nvim'


abbr -a -- sv "sudo $EDITOR"
abbr -a -- s sudo
