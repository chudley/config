export PATH=/usr/local/bin:$PATH
if [ -a ~/.personality ]; then
	export PERSONALITY=`cat ~/.personality`
fi
if [ "$PERSONALITY" == "" ]; then
	export PERSONALITY=7
fi
PS1="\[\e[0;3${PERSONALITY}m\]\u\[\e[m\]@\[\e[0;3${PERSONALITY}m\]\h\[\e[m\] \w \n\[\e[1;32m\]$\[\e[m\] "
EDITOR=/usr/bin/vim

function activate {
	# todo: more robust checking of virtualenv directory, and a better name for the function
	if [ -a .env/bin/activate ]; then
		source .env/bin/activate
	else
		echo "Relies on the file '.env/bin/activate', which doesn't exist."
	fi
}

if [ -a ~/projects/joyent-tools/cloudapi.sh ]; then
	source ~/projects/joyent-tools/cloudapi.sh eu-ams-1;
fi

if [ -a ~/projects/joyent-tools/manta.sh ]; then
	source ~/projects/joyent-tools/manta.sh;
fi
