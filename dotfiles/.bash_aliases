# +++ GOGH - A GNOME TEMRINAL COLOR-ER +++
alias gogh='bash -c  "$(wget -qO- https://git.io/vQgMr)"'

# +++ DOCKER +++
alias docker-clean=' \
      docker ps --no-trunc -aqf "status=exited" | xargs docker rm ; \
      docker images --no-trunc -aqf "dangling=true" | xargs docker rmi ; \
      docker volume ls -qf "dangling=true" | xargs docker volume rm'

# +++ BASH FUNCTIONALITY +++
alias h="history"
alias ll="ls -la"
alias lk="echo $PWD; ll"

# +++ USABILITY +++
alias weather="curl https://wttr.in/Natick"
