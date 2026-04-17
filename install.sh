cat <<'EOF' > ~/dotfiles/install.sh
#!/bin/bash
cp ~/dotfiles/zshrc ~/.zshrc
cp ~/dotfiles/bashrc ~/.bashrc
cp ~/dotfiles/gitconfig ~/.gitconfig
cp ~/dotfiles/gitignore_global ~/.gitignore_global
EOF

chmod +x ~/dotfiles/install.sh