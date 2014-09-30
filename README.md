# Mega awesome vim files

## Plugins
* https://github.com/gmarik/Vundle.vim
* https://github.com/tpope/vim-fugitive
* https://github.com/scrooloose/nerdtree
* https://github.com/ervandew/supertab
* https://github.com/tpope/vim-surround
* https://github.com/tomtom/tcomment_vim
* https://github.com/jistr/vim-nerdtree-tabs
* https://github.com/tokutake/twig-indent
* https://github.com/tomtom/tlib_vim
* https://github.com/MarcWeber/vim-addon-mw-utils
* https://github.com/garbas/vim-snipmate
* https://github.com/honza/vim-snippets
* https://github.com/Raimondi/delimitMate
* https://github.com/docunext/closetag.vim
* https://github.com/wincent/Command-T
* https://github.com/edsono/vim-matchit
* https://github.com/jlanzarotta/bufexplorer
* https://github.com/evidens/vim-twig

## Installation

Just clone the repository and link ```.vim``` and ```.vimrc```.

```shell
cd ~
mkdir git
cd git
git clone https://github.com/fuglu/vim-files.git
cd ~
ln -s git/vim-files/.vimrc .
ln -s git/vim-files/.vim .
```

Then open ```vim``` and fire ```:PluginInstall``` to get all plugins.

You also have to compile the Command-T plugin:
```shell
cd ~
cd .vim/bundle/Command-T/ruby/command-t/
ruby extconf.rb
make
cd ~
```


**:wq**
