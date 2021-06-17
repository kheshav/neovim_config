#!/bin/bash

mkdir -p ~/.config/nvim/customsettings
mkdir -p ~/.local/share/nvim/site/pack

cp -v *.vim ~/.config/nvim/customsettings
cp -v *.json ~/.config/nvim/customsettings

cp -v ~/.config/nvim/init.vim ~/.config/nvim/init.vim_`date +%d%b%Y`
cp -v ~/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json_`date +%d%b%Y`


cat > ~/.config/nvim/init.vim <<EOL
runtime customsettings/variables.vim
runtime customsettings/plugins.vim
runtime customsettings/color.vim
runtime customsettings/telescope.vim
runtime customsettings/nerdtree.vim
runtime customsettings/gitgutter.vim
runtime customsettings/coc.vim
runtime customsettings/py-docstring.vim
EOL

ln -s ~/.config/nvim/customsettings/coc-settings.json ~/.config/nvim/coc-settings.json

mkdir -p ~/.local/share/nvim/site/pack/airline/start/
git clone https://github.com/vim-airline/vim-airline.git ~/.local/share/nvim/site/pack/airline/start/vim-airline

mkdir -p ~/.local/share/nvim/site/pack/airblade/start/
git clone https://github.com/airblade/vim-gitgutter.git ~/.local/share/nvim/site/pack/airblade/start/vim-gitgutter

mkdir -p ~/.local/share/nvim/site/pack/indentLine/start/
git clone https://github.com/Yggdroot/indentLine.git ~/.local/share/nvim/site/pack/indentLine/start/
