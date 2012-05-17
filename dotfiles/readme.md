My dotfiles
=
This is a collection of the dotfiles I share between each machine.

Bash Prompt
-
So I don't forget, here's how the bash prompt works.

	PS1="[\[\e[0;33m\]\u\[\e[m\]@\[\e[0;33m\]\h\[\e[m\]]: \w\n\[\e[1;33m\]$\[\e[m\] "

* Escape character `\e`
* Colouring ([colours here](http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html))

	* To start the colouring: `\e[0;00m`

	* To finish the colouring: `\e[m`

* I've read that you should further surround your colouring blocks with escaped `[`'s and `]`'s, so they don't count towards the length of the prompt. To do this:

	* Before colouring: `\[`

	* After colouring: `\]`

An example
--
To have your coloured username in your prompt with a standard colour dollar sign, it should look like this:

	\[\e[0;33m\]\u\[\e[m\]$

