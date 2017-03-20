sudo apt-get install -y emacs
git clone --recursive https://github.com/syl20bnr/spacemacs ~/.emacs.d
ln -s ~/dotfiles/.spacemacs ~/.spacemacs

mkdir -p ~/.lein
echo '{:user {:plugins [[refactor-nrepl "1.1.0"][cider/cider-nrepl "0.9.1"]]}}' >> ~/.lein/profiles.clj
