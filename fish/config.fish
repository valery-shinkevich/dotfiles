# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Environment
set -gx EDITOR vim

# Cursor speed
xset r rate 200 80

# Bobthefish theme options
set -g theme_color_scheme dracula
set -g theme_display_cmd_duration no
set -g theme_display_date no
set -g theme_display_docker_machine no
set -g theme_display_hg no
set -g theme_display_k8s_context no
set -g theme_display_nvm no
set -g theme_display_ruby no
set -g theme_display_vagrant no
set -g theme_display_vi yes
set -g theme_git_worktree_support no
set -g theme_nerd_fonts yes

# Autojump
[ -f "$HOME/.nix-profile/share/autojump/autojump.fish" ]; and source "$HOME/.nix-profile/share/autojump/autojump.fish"

# Key bindings: vim and default emacs
if status --is-interactive
  set -U fish_key_bindings fish_hybrid_key_bindings
end

# sudo !!
function sudo
  if test "$argv" = !!
    eval command sudo $history[1]
  else
    command sudo $argv
  end
end

# Fix for LD_PRELOAD not found in sdk and screenfetch
# set -x LD_PRELOAD "/usr/lib/x86_64-linux-gnu/libgtk3-nocsd.so.0"

# Colors in man pages / less
set -x LESS_TERMCAP_mb (set_color -o magenta)
set -x LESS_TERMCAP_md (set_color -o brgreen)
set -x LESS_TERMCAP_so (set_color -b blue bryellow)
set -x LESS_TERMCAP_us (set_color -u brred)
set -x LESS_TERMCAP_me (set_color normal)
set -x LESS_TERMCAP_ue (set_color normal)
set -x LESS_TERMCAP_se (set_color normal)

