#!/usr/bin/env zsh
# source : http://doc.ubuntu-fr.org/zsh
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'
zstyle ':completion:*:sudo:*' command-path /usr/local/sbin /usr/local/bin \
                             /usr/sbin /usr/bin /sbin /bin /usr/X11R6/bin
# Crée un cache des complétion possibles
# très utile pour les complétion qui demandent beaucoup de temps
# comme la recherche d'un paquet aptitude install moz<tab>
zstyle ':completion:*' use-cache on
zstyle ':completion:*' cache-path ~/.zsh_cache

autoload -U promptinit
promptinit
prompt adam1

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.history

bindkey "ù" up-line-or-search

# To save every command before it is executed (this is different from bash's history -a solution):
setopt inc_append_history
# To retrieve the history file everytime history is called upon.
setopt share_history

setopt BRACE_CCL # source: http://stackoverflow.com/questions/2394728/zsh-brace-expansion-seq-for-character-lists-how

LH=http://localhost

source ~/.aliases

export EDITOR=/usr/bin/vim
export GOPATH=$HOME/go
export PATH=$PATH:/snap/bin/
