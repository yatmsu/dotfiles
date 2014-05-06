update

# homebrew-caskのインストール
tap homebrew/binary
tap phinze/homebrew-cask
install brew-cask

# Ricty install
# $ cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty*.ttf ~/Library/Fonts/
# $ fc-cache -vf
tap sanemat/font
install --powerline --vim-powerline ricty

cleanup

# dmg install
# xld書式: %T/%n.%t
cask install xld
cask install vlc
cask install alfred
cask install musicbrainz-picard
cask install ripit
cask install thunderbird
cask install google-chrome
cask install firefox
cask install dropbox
cask install sourcetree
cask install virtualbox
cask install vagrant
cask install xtrafinder
cask install skype
cask install sequel-pro

# add Caskromm path
cask alfred link

cask cleanup
