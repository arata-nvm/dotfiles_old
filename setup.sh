#!/bin/sh

REPO_URL="https://github.com/arata-nvm/dotfiles"
DOTFILES_LOGO='
    _/_/_/      _/_/    _/_/_/_/_/  _/_/_/_/  _/_/_/  _/        _/_/_/_/    _/_/_/   
   _/    _/  _/    _/      _/      _/          _/    _/        _/        _/          
  _/    _/  _/    _/      _/      _/_/_/      _/    _/        _/_/_/      _/_/       
 _/    _/  _/    _/      _/      _/          _/    _/        _/              _/      
_/_/_/      _/_/        _/      _/        _/_/_/  _/_/_/_/  _/_/_/_/  _/_/_/         

     this dotfiles made by arata-nvm.
'

echo "$DOTFILES_LOGO"

git clone ${REPO_URL}

cd dotfiles && ./install base zsh blackarch
