#!/usr/bin/env nix-shell
#!nix-shell -p cowsay lolcat

# Execute programs
TF_VERSION=1.5.7
source "/usr/local/bin/virtualenvwrapper.sh" # virtualenv should be installed on the main environment.
brew install tfenv
tfenv install $TF_VERSION
tfenv use $TF_VERSION

# You need to be connected to the VPN.
aws eks update-kubeconfig --region eu-west-1 --name k8s-ecom-acc --alias acc --profile eks-acc
aws eks update-kubeconfig --region eu-west-1 --name k8s-ecom-dev --alias dev --profile eks-dev


# Cowsay messages
DATE=$(date '+%A %W %Y %X')
WHOAMI=$(whoami)
GREETINGS="Hello, $WHOAMI! $DATE"
message="$GREETINGS"


cowsay_list=("beavis.zen" "blowfish" "bong" "bud-frogs" "bunny" "cheese" "cower" "daemon" "default" "dragon" "dragon-and-cow" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "ghostbusters" "head-in" "hellokitty" "kiss" "kitty" "koala" "kosh" "llama" "luke-koala" "meow" "milk" "moofasa" "moose" "mutilated" "ren" "satanic" "sheep" "skeleton" "small" "stegosaurus" "stimpy" "supermilker" "surgery" "three-eyes" "turkey" "turtle" "tux" "udder" "vader" "vader-koala" "www")
length=${#cowsay_list[@]}
index=$((RANDOM % length))
selected_cow=${cowsay_list[index]}

# call cowsay with the message and the output of cowsay to lolcat
cowsay -f $selected_cow "$message" | lolcat
