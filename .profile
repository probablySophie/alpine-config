# I use this a bunch
alias la='ls -A'

alias gitwhoami="git config --list | grep \"user\"" # because I don't want to FULLY dox myself

alias q="exit"	# because I use neovim and am dumb :(
alias :q="exit"
alias qq="exit"

bind -s 'set completion-ignore-case on' &> /dev/null

# Use vim instead of vi, but only if we have vim installed
if command -v vim &> /dev/null; then
		alias vi="vim"
fi
