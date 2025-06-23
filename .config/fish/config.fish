alias ns='npm start'
alias yi='yarn install'
alias y='yadm'
alias yadd='yadmadd'
alias yacm='yadd; y c -m '
alias ni='npm install'
alias ys='yarn start'
alias yss='yarn start:staging'
alias yd='yarn dev'
alias nrd='npm run dev'
alias g='git'
alias r='ranger'
alias vi='vim'
alias v='nvim'
alias nv='nvim'
alias tb="netcat termbin.com 9999"
alias rm="rm -iv"
alias mv="mv -v"
alias cp="cp -v"
alias fzfcat='fzf --preview="cat {}"' 
alias fzfbat='fzf --preview="bat {} --color=always"' 
alias fzfgitdiff='git diff --name-only | fzf --preview="git diff --color=always -- {}"' 
alias gs='g s'

export PATH="$HOME/.npm-global/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk 
export JAVA_HOME=/usr/lib/jvm/jdk-17.0.12-oracle-x64
export PATH="$PATH:$JAVA_HOME/bin:$ANDROID_HOME/build-tools:$ANDROID_HOME/platform-tools" 
# export PATH="$PATH:$ANDROID_HOME/platform-tools"
export PATH="$PATH:/opt/nvim/"
export PATH="$PATH:/opt/appimages/"

alias venvc="python3 -m venv .venv"
alias venva="source .venv/bin/activate.fish"
# deactivate is to exit venv environment
alias venvd="deactivate"
alias wgup="sudo wg-quick up wg0"
alias wgdown="sudo wg-quick down wg0"
# this is for ranger
export EDITOR='nvim'
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
# export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git --exclude node_modules'
export FZF_DEFAULT_COMMAND='rg $dir --files --hidden --follow -g "!{.git,node_modules}/*" 2> /dev/null'
# export FZF_CTRL_T_COMMAND=$FZF_DEFAULT_COMMAND

# mac only
# eval (/opt/homebrew/bin/brew shellenv)


alias tmuxmoff="tmux set -g mouse off"
alias tmuxmon="tmux set -g mouse on"


if type -q fzf_key_bindings
	fzf_key_bindings
end

if test "$COLORTERM" = truecolor
   set -g fish_term24bit 1
end

function trash
	for arg in $argv
		mv $arg ~/.local/share/Trash/files/
	end
end



function browsh
	# cli browser
	docker run -it browsh/browsh
end


# fixes yadm encrypt error
export GPG_TTY=(tty)


function yadmadd
	for i in (yadm diff --name-only)
		echo "~/$i"
		yadm add ~/$i
	end
end


function find_and_replace
	grep -rli "$argv[1]" $argv[3] | xargs sed $argv[4] "s/$argv[1]/$argv[2]/g"
end


set -gx VOLTA_HOME "$HOME/.volta"
set -gx PATH "$VOLTA_HOME/bin" $PATH
