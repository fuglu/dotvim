Mega awesome vim files
======================

Plugins
-------

* https://github.com/gmarik/Vundle.vim
* https://github.com/Glench/Vim-Jinja2-Syntax
* https://github.com/MarcWeber/vim-addon-mw-utils
* https://github.com/Xuyuanp/git-nerdtree
* https://github.com/airblade/vim-gitgutter
* https://github.com/airblade/vim-rooter
* https://github.com/bronson/vim-trailing-whitespace
* https://github.com/chase/vim-ansible-yaml
* https://github.com/ervandew/supertab
* https://github.com/evidens/vim-twig
* https://github.com/garbas/vim-snipmate
* https://github.com/gorodinskiy/vim-coloresque
* https://github.com/gregsexton/MatchTag
* https://github.com/honza/vim-snippets
* https://github.com/jamessan/vim-gnupg
* https://github.com/jiangmiao/auto-pairs
* https://github.com/kien/ctrlp.vim
* https://github.com/rking/ag.vim
* https://github.com/scrooloose/nerdcommenter
* https://github.com/scrooloose/nerdtree
* https://github.com/scrooloose/syntastic
* https://github.com/stephpy/vim-yaml
* https://github.com/terryma/vim-multiple-cursors
* https://github.com/tokutake/twig-indent
* https://github.com/tomtom/tlib_vim
* https://github.com/tpope/vim-fugitive
* https://github.com/tpope/vim-repeat
* https://github.com/xolox/vim-easytags
* https://github.com/xolox/vim-misc



Installation
------------

```sh
# Clone repo
cd ~
mkdir git
cd git
git clone https://github.com/fuglu/vim-files.git
cd ~

# Create links
ln -s git/vim-files/vimrc .vimrc
ln -s git/vim-files/vim .vim

# Install plugins
vim +PluginInstall
```



Optional
--------

```sh
# Install some linters
sudo aptitude install libxml2-utils
sudo aptitude install pylint
sudo aptitude install tidy
sudo gem install sass
sudo npm install -g coffeelint
sudo npm install -g csslint
sudo npm install -g js-yaml
sudo npm install -g jshint
sudo npm install -g jsonlint
sudo npm install -g less
```


**:wq**
