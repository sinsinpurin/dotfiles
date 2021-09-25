echo ""
echo "######################################"
echo "preztoをクローンしてくる"
echo "######################################"
echo ""
git clone --recursive \
    https://github.com/sorin-ionescu/prezto.git \
    $HOME/.zprezto

echo ""
echo "######################################"
echo "~/.zprezto/runcomsにある"
echo "zsh系の設定ファイルを一旦削除"
echo "######################################"
echo ""

cd ~/.zprezto/runcoms
rm -rf z*

echo ""
echo ""
echo "######################################"
echo "~/.zprezto/runcomsに"
echo ".z系のシンボリックリンクを貼る"
echo ""
echo "本来なら~/.zprezto/runcoms側から貼るけど"
echo "dotfiles管理のために逆から貼る"
echo "######################################"
echo ""

ln -s $HOME/.zlogin $HOME/.zprezto/runcoms/zlogin &&
    ln -s $HOME/.zlogout $HOME/.zprezto/runcoms/zlogout &&
    ln -s $HOME/.zpreztorc $HOME/.zprezto/runcoms/zpreztorc &&
    ln -s $HOME/.zprofile $HOME/.zprezto/runcoms/zprofile &&
    ln -s $HOME/.zshenv $HOME/.zprezto/runcoms/zshenv &&
    ln -s $HOME/.zshrc $HOME/.zprezto/runcoms/zshrc

echo ""
echo "######################################"
echo "Success!"
echo "######################################"
echo ""