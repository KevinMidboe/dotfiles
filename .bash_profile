export PS1="\W:$ "
export SHELL="/bin/bash"
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

HISTFILESIZE=10000

# import aliases from file
. ~/.aliases

function vpn-connect {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "VPN (midboe.ddns.net)" -- your VPN name here
                if exists VPN then connect VPN
                repeat while (current configuration of VPN is not connected)
                    delay 1
                end repeat
        end tell
end tell
EOF
}

function vpn-disconnect {
/usr/bin/env osascript <<-EOF
tell application "System Events"
        tell current location of network preferences
                set VPN to service "VPN (midboe.ddns.net)" -- your VPN name here
                if exists VPN then disconnect VPN
        end tell
end tell
return
EOF
}

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
# PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
# export PATH

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"
