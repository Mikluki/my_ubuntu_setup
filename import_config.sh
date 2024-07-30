#!/bin/bash
# shell
cp $HOME/.bashrc ./shell/.bashrc
cp $HOME/.zshrc ./shell/.zshrc
cp $HOME/.p10k.zsh ./shell/.p10k.zsh

# terminator
cp -r $HOME/.config/terminator ./apps

# sublime
cp -r $HOME/.config/sublime-text/Packages/ ./apps/sublime/User

# cmus player
echo "# copying cmus cfg"
cp $HOME/.config/cmus/autosave ./apps/cmus/autosave

# audio visualizer
echo "# copying vis cfg"
cp $HOME/.config/vis/config ./apps/vis/config
echo "# copying vis colors"
cp -r $HOME/.config/vis/colors ./apps/vis

# VScode setting and VScodeVim settings
echo "# copying VScode cfg"
cp $HOME/.config/Code/User/keybindings.json ./apps/Code/User/keybindings.json
cp $HOME/.config/Code/User/settings.json ./apps/Code/User/settings.json
cp -r $HOME/.config/Code/User/snippets ./apps/Code/User/
