# install latest node & yarn
brew install node yarn

# install specific node versions
brew install node@20
brew install node@18

# Globally install with npm

packages=(
    prettier
)

yarn global install "${packages[@]}"
