# Install cask packages
apps=(
  1password
  1password-cli
  docker
  firefox
  google-cloud-sdk
  google-chrome
  homerow
  vlc
)

# cask only supported on macos
if [ "$(uname)" == "Darwin" ]; then
  brew install "${apps[@]}" --cask
fi
