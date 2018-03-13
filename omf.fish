# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
# source /usr/share/virtualenvwrapper/virtualenvwrapper.sh

set -g theme_display_user yes
set -g theme_title_use_abbreviated_path no
set -g theme_title_display_process yes
