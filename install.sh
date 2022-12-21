#!/bin/bash

# Get dotfiles installation directory
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "Downloading zsh plugins and themes..."
mkdir ~/.zsh
mkdir ~/.zsh/plugins
mkdir ~/.zsh/themes
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.zsh/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/plugins/zsh-syntax-highlighting
git clone https://github.com/romkatv/powerlevel10k.git ~/.zsh/themes/powerlevel10k

echo "Symlinking configurations & editor settings..."
ln -sf "$DOTFILES_DIR/git/.gitconfig" ~
ln -sf "$DOTFILES_DIR/zsh/.zsh_aliases" ~
ln -sf "$DOTFILES_DIR/zsh/.zshrc" ~
ln -sf "$DOTFILES_DIR/zsh/.p10k.zsh" ~
ln -sf "$DOTFILES_DIR/vscode/settings.json" ~/Library/Application\ Support/Code/User/

echo "Installing VS Code extensions..."
EXTENSIONS=(
    GitHub.github-vscode-theme
    PKief.material-icon-theme
)
code --install-extension ${EXTENSIONS[@]}

echo "Installation complete!"
