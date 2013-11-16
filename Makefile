DOT_HOME=~/.dotfiles

install: install-vim install-tmux install-git

install-vim:
	ln -fs $(DOT_HOME)/vim ~/.vim
	ln -fs $(DOT_HOME)/vim/vimrc.vim-template ~/.vimrc

install-tmux:
	ln -fs $(DOT_HOME)/tmux/tmux.conf ~/.tmux.conf

install-git:
	ln -fs $(DOT_HOME)/git/gitconfig ~/.gitconfig

update: update-vim

update-vim:
	git subtree pull --prefix vim/bundle/ctrlp.vom https://github.com/kien/ctrlp.vim.git master --squash
	git subtree pull --prefix vim/bundle/jellybeans.vim https://github.com/nanotech/jellybeans.vim.git master --squash
	git subtree pull --prefix vim/bundle/mustache.vim https://github.com/juvenn/mustache.vim.git master --squash
	git subtree pull --prefix vim/bundle/syntastic https://github.com/scrooloose/syntastic.git master --squash
	git subtree pull --prefix vim/bundle/vim-coffee-script https://github.com/kchmck/vim-coffee-script.git master --squash
	git subtree pull --prefix vim/bundle/vim-fugitive https://github.com/tpope/vim-fugitive.git master --squash
	git subtree pull --prefix vim/bundle/vim-autoclose https://github.com/Townk/vim-autoclose.git master --squash


