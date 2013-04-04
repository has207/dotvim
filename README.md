## Setup:

    git clone git://github.com/has207/dotvim.git ~/.vim
    ln -s ~/.vim/vimrc ~/.vimrc
    cd ~/.vim
    mkdir tmp backup
    git submodle update --init

    # Fix syntastic (if it's still broke):
    cd ~/.vim/bundle/syntastic && git reset --hard 8095909dcc9

## Add plugin:

    cd ~/.vim
    git submodule add http://github.com/<user>/vim-<plugin>.git bundle/<plugin>
    git add .
    git commit -m "Install <plugin>"

## Delete plugin:

    1. Remove it from .gitmodules
    2. Remove it from .git/config
    3. Run git rm --cached bundle/<plugin>
    4. Run rm -rf .git/modules/bundle/<plugin>
