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

brew install "${apps[@]}" --cask
