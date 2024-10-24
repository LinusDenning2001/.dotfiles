PATH=$PATH:$HOME/fpc/fpc-3.2.2/bin/

alias vim='nvim'
alias status='clear; git status'
alias doc='evince'
alias q='exit'
alias :q='exit'

# PATH to pascal lsp
PATH=$PATH:$HOME/.dotfiles/nvim/lsp/pascal-language-server/src/standard/
#	FPC source directory (to compile lsp).
export FPCDIR='${HOME}/fpc/fpc-3.2.2/'
