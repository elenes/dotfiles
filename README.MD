elenes dotfiles
===============

Contents
--------
```    
|-- .gitignore
|-- .vimrc
|-- .viminfo
|-+ .vim
  |-+ colors
  |-+ bundle
  |-- ...
```

Setup
-----
```
git clone https://github.com/elenes/dotfiles.git
git init
git submodule init
git submodule update
ln .vim/pathogen/autoload/pathogen.vim .vim/autoload/pathogen.vim
```
