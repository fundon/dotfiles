
set dot (realpath (dirname (status --current-filename)))

ln -sf $dot/.hushlogin ~/

ln -sf $dot/.git{attributes, config , ignore , message } ~/

if test -f (realpath $dot/../.gitconfig.local)
	ln -sf (realpath $dot/../.gitconfig.local) ~/
end

ln -sf $dot/.config/starship.toml ~/.config/

ln -sf $dot/.config/htop ~/.config/

ln -sf $dot/.config/neofetch ~/.config/

ln -sf $dot/.tmux.conf ~/

ln -sf $dot/.ripgreprc ~/

if test -f (realpath $dot/../.yarnrc)
	ln -sf (realpath $dot/../.yarnrc) ~/
end

if test -f (realpath $dot/../.npmrc)
	ln -sf (realpath $dot/../.npmrc) ~/
end

curl -O https://dl.google.com/go/go1.14.darwin-amd64.tar.gz
tar -zxf go1.14.darwin-amd64.tar.gz
move go $HOME/.go
rm go1.14.darwin-amd64.tar.gz



# Install Xcode then
sudo xcode-select --install
sudo xcode-select -s /Applications/Xcode.app/Contents/Developer

