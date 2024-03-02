# Path to the bash it configuration
export BASH_IT="/Users/$(whoami)/.bash_it"

# Install bash it
source $BASH_IT/install.sh -f --no-modify-config 

# enable plugins
bash-it enable plugin git docker kubectl node python go aws terraform
#enble bash it completions
bash-it enable completion git docker kubectl node python go aws terraform

# save profile 
bash-it profile save "$(whoami)"

bash-it profile load "$(whoami)"

