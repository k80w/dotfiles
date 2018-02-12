#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Dircolors
eval $(dircolors -b $HOME/.dircolors)

export EDITOR=/bin/nvim
export NPM_PACKAGES="${HOME}/.npm-packages"
export GOPATH=/home/dnaf
export PATH=$PATH:$NPM_PACKAGES/bin:${GOPATH//://bin:}/bin:/home/dnaf/bin
alias qr='qrencode -t utf8 -o -'

