source $1/lib/{directory,lineinfile}.bash

lineinfile absent "$HOME/.vimrc" "source ~/.vim/init.vim"

_post_delete() {
  directory absent $HOME/.vim/{plugin,settings} $HOME/{.vim,.config/nvim}
}
