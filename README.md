Setup:

git clone git://github.com/has207/dotvim.git ~/.vim

ln -s ~/.vim/vimrc ~/.vimrc

cd ~/.vim && mkdir tmp

git submodule init

git submodle update

Fix syntastic (if it's still broke):

cd ~/.vim/bundle/syntastic && git reset --hard 8095909dcc9
