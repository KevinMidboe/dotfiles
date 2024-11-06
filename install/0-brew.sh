# Install Homebrew

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Add required taps
brew tap hashicorp/tap

# Install packages
apps=(
  ansible
  binwalk
  btop
  cario
  cmake
  drone-cli
  elixir
  erlang
  fd
  ffmpeg
  fish
  gcc
  gd
  gh
  gnupg
  gnutls
  go
  helm
  httpie
  iperf3
  ipmitool
  jq
  k9s
  lsusb
  lua
  lua-language-server
  meson
  ncdu
  neovim
  nmap
  ruby
  tailscale
  telnet
  hashicorp/tap/terraform
  tmux
  tree
  watch
  wget
  zig
)

brew install "${apps[@]}"

# Git comes with diff-highlight, but isn't in the PATH
ln -sf "$(brew --prefix)/share/git-core/contrib/diff-highlight/diff-highlight" /usr/local/bin/diff-highlight
