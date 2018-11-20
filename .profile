export PATH=$PATH:$HOME/.scripts:$HOME/esp/xtensa-esp32-elf/bin
export _JAVA_OPTIONS="-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true"
export ESPIDF=$HOME/esp/esp-idf
export IDF_PATH=$HOME/esp/esp-idf
export EDITOR=vim
export XDG_CONFIG_HOME=$HOME/.config/
export SSH_ASKPASS=ssh-askpass
export HOSTNAME=$(hostname)

# Keychain stuff
keychain ~/.ssh/id_rsaa
[ -f ~/.keychain/$HOSTNAME-sh ] && . ~/.keychain/$HOSTNAME-sh 2>/dev/null
[ -f ~/.keychain/$HOSTNAME-sh-gpg ] && . ~/.keychain/$HOSTNAME-sh-gpg 2>/dev/null

redshift &
udiskie &
