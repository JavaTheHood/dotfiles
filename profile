#############################################################
# Generic configuration that applies to all shells
#############################################################

# RVM Ruby Selector
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

# RVM suggests using gcc instead of llvm (which Apple now symlinks gcc to)
#export CC="/usr/bin/gcc-4.8"
#export CXX="/usr/bin/gcc-4.8"

source ~/.shellvars
source ~/.shellfn
source ~/.shellpaths
source ~/.shellaliases
# Private/Proprietary shell aliases (not to be checked into the public repo) :)

#export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
