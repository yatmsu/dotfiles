update

tap homebrew/binary
tap homebrew/versions

# 
install git
install tig


# Ricty install
# $ cp -f /usr/local/Cellar/ricty/3.2.2/share/fonts/Ricty*.ttf ~/Library/Fonts/
# $ fc-cache -vf
tap sanemat/font
install --powerline --vim-powerline ricty

cleanup

# homebrew-caskのインストール
tap phinze/homebrew-cask
tap caskroom/versions
install brew-cask

# dmg install
# xld書式: %T/%n.%t
cask install xld
cask install alfred
cask install bathyscaphe
cask install dropbox
cask install firefox-ja
cask install google-chrome
cask install musicbrainz-picard
cask install ripit
cask install sequel-pro
cask install skype
cask install sourcetree
cask install thunderbird
cask install vagrant
cask install virtualbox
cask install vlc
cask install xtrafinder

# add Caskromm path
cask alfred link

cask cleanup
