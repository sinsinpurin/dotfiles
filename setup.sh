# #!/bin/zsh

# DOT_FILES=(.*)

# for file in ${DOT_FILES[@]}; do
#     ln -s $HOME/dotfiles/$file $HOME/$file
# done

# 未定義な変数があったら途中で終了する
set -ue

# 今のディレクトリ
# dotfilesディレクトリに移動する
BASEDIR=$(dirname $0)
cd $BASEDIR
echo $BASEDIR

# dotfilesディレクトリにある、ドットから始まり2文字以上の名前のファイルに対して
for f in .??*; do
    [ "$f" = ".git" ] && continue
    [ "$f" = ".gitconfig.local.template" ] && continue
    [ "$f" = ".gitmodules" ] && continue

    # シンボリックリンクを貼る
    ln -snfv ${PWD}/"$f" ~/
done