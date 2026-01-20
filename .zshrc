#v3.6.2 If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/tom/.oh-my-zsh"


export OTEL_SDK_DISABLED=true
export LINQ_SERVICE_FRAMEWORK_PUBLISH_FORMAT=json

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    zsh-interactive-cd
    git
    docker
    z
    zsh-autosuggestions
    kubectl
)

fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias linq="/Users/tom/Library/Caches/pypoetry/virtualenvs/custom-driver-156LMkUX-py3.13/bin/linq"
alias dc="docker compose"
alias mp="multipass"
alias d="docker"
alias k="kubectl"
alias zshconfig="vi ~/.zshrc"
alias weather="curl wttr.in"
alias moon="curl wttr.in/moon"
alias gitdiff="git diff --no-index"
alias githash="git rev-parse HEAD | pbcopy"
alias gitpush="branchName=\`git rev-parse --abbrev-ref HEAD\`; git push origin \$branchName"
alias m="make"
alias ls="ls -la"
alias todo='git grep -l TODO | xargs -n1 git blame -f -n -w | grep "$(git config user.name)" | grep TODO | sed "s/.\{9\}//" | sed "s/(.*)[[:space:]]*//" | sort'
alias p='poetry'
alias v="vim"
alias seaweedlocal="AWS_PROFILE=seaweed AWS_ACCESS_KEY_ID=REPLACE_ME AWS_SECRET_ACCESS_KEY=REPLACE_ME stu --endpoint-url http://localhost:8333"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias gfcua="git add . && gcfu HEAD"
alias devdb='PGPASSWORD=dev psql -h localhost -p 5555 -U dev -d app -c'
alias ghpr="gh pr create"
alias v="vim"

# Pure theme
# fpath+=$HOME/.zsh/pure
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

export CMAKE_PREFIX_PATH=/Users/tom/automata/clib
export CTEST_OUTPUT_ON_FAILURE=1
export AUTO_SIGN_KEY=~/go/src/bitbucket.org/automata_tech/automata_go/common/docs/eva-cert-key
export AUTO_CERTS_CHAIN=/Users/tom/automata/keys/deploy/tom.chain
export K9S_CONFIG=~/.config/k9s/config.yml
export XDG_CONFIG_HOME="$HOME/.config"


# Golang stuff
export GOPATH=$HOME/go
export GOROOT="$(brew --prefix golang)/libexec"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"

export CIRCLECI_CLI_TOKEN=511260c4e6c685c4d191888bf4db06198fb70a4a
# z script
#. /usr/local/etc/profile.d/z.sh
export PATH=$PATH:~/google-cloud-sdk/bin:~/apps/z
export PATH=$PATH:~/.rustup/toolchains/stable-aarch64-apple-darwin/bin
set -o vi

# Automata Stuff
export PATH="$PATH:$HOME/automata/linq-local-development-platform/scripts"
fpath=($HOME/automata/linq-local-development-platform/scripts/completions $fpath)
autoload -U compinit && compinit

# Source fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tom/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tom/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tom/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tom/google-cloud-sdk/completion.zsh.inc'; fi

# add code to path
code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/tom/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

#. $HOME/.asdf/asdf.sh
#. $HOME/.asdf/completions/asdf.bash
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"


export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export KUBECONFIG=~/.kube/config

# Created by `pipx` on 2024-10-15 15:43:08
export PATH="$PATH:/Users/tom/.local/bin"

export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init --path)"
eval "$(pyenv init -)"



# tmux-sessioniser
PATH="$PATH":"$HOME/.local/scripts/"
bindkey -s ^f "tmux-sessionizer\n"
bindkey -s ^h "tmux-sessionizer ~\n"
bindkey -s '\e1' "tmux-sessionizer -s 0\n"
bindkey -s '\e2' "tmux-sessionizer -s 1\n"
bindkey -s '\e3' "tmux-sessionizer -s 2\n"
bindkey -s '\e4' "tmux-sessionizer -s 3\n"


