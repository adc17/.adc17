# Complete g like git
compdef g=git

if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi
if [ $commands[kubectl] ]; then compdef k=kubectl; fi
