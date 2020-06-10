git clone git@github.com:ohmyzsh/ohmyzsh.git $HOME/.oh-my-zsh

for dir in git tmux zsh
do
	for f in $(find $HOME/.config/$dir -type f)
	do
		ln -s $f $HOME/.$(basename $f)
	done
done
