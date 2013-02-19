export PATH=/usr/local/bin:$PATH
PS1="\[\e[0;32m\]\u\[\e[m\]@\[\e[0;32m\]\h\[\e[m\] \w \n\[\e[1;32m\]$\[\e[m\] "
EDITOR=/usr/bin/vim

function activate {
	# todo: more robust checking of virtualenv directory, and a better name for the function
	if [ -a .env/bin/activate ]; then
		source .env/bin/activate
	else
		echo "Relies on the file '.env/bin/activate', which doesn't exist."
	fi
}
