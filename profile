# Make sure SHELL is set to fish
export SHELL="$(which fish)"

# Setting PATH for Homebrew that should take precedence
# over system-provided programs
export PATH="/usr/local/bin:$PATH"

# Add homebrew arm64 install path if applicable
if test $(uname -m) = "arm64"
  export PATH="/opt/homebrew/bin:$PATH"
end

# MacPorts Installer rddition on 2022-10-31_at_23:07:29: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Setting go environment
export GOPATH=$HOME/dev/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin"

# Setting up node/npm
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export NPM_PACKAGES="$HOME/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

# Setting up ruby & gem
export PATH="/Users/kevinmidboe/.gem/ruby/2.7.0/bin:$PATH"
