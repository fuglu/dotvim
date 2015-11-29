Plugins
=======

* [ag.vim](https://github.com/rking/ag.vim)
* [auto-pairs](https://github.com/jiangmiao/auto-pairs)
* [ctrlp.vim](https://github.com/kien/ctrlp.vim)
* [git-nerdtree](https://github.com/Xuyuanp/git-nerdtree)
* [MatchTag](https://github.com/gregsexton/MatchTag)
* [nerdcommenter](https://github.com/scrooloose/nerdcommenter)
* [nerdtree](https://github.com/scrooloose/nerdtree)
* [supertab](https://github.com/ervandew/supertab)
* [syntastic](https://github.com/scrooloose/syntastic)
* [tlib_vim](https://github.com/tomtom/tlib_vim)
* [twig-indent](https://github.com/tokutake/twig-indent)
* [vim-addon-mw-utils](https://github.com/MarcWeber/vim-addon-mw-utils)
* [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml)
* [vim-coloresque](https://github.com/gorodinskiy/vim-coloresque)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter)
* [vim-gnupg](https://github.com/jamessan/vim-gnupg)
* [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)
* [Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)
* [vim-misc](https://github.com/xolox/vim-misc)
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)
* [vim-repeat](https://github.com/tpope/vim-repeat)
* [vim-rooter](https://github.com/airblade/vim-rooter)
* [vim-snipmate](https://github.com/garbas/vim-snipmate)
* [vim-snippets](https://github.com/honza/vim-snippets)
* [vim-trailing-whitespace](https://github.com/bronson/vim-trailing-whitespace)
* [vim-twig](https://github.com/evidens/vim-twig)
* [vim-yaml](https://github.com/stephpy/vim-yaml)


Installation
============

```sh
# Clone repo
cd ~
mkdir git
cd git
git clone https://github.com/fuglu/dotvim.git
cd ~

# Create links
ln -s git/dotvim/vimrc .vimrc
ln -s git/dotvim/vim .vim

# Install plugins
vim +PlugInstall
```


Required packages
=================

```sh
sudo aptitude install exuberant-ctags
sudo aptitude install gcc
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
