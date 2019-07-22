# Turn on the ability to use colors
export CLICOLOR=1

# Customize prompt 
function prompt {
    local BLACKBOLD="\[\033[1;30m\]"
    local RED="\[\033[0;31m\]"
    local GREEN="\[\033[0;32m\]"
    local GREEN_WHITE="\[\033[37;42m\]"
    local RESETCOLOR="\[\e[00m\]"

    # Customize primary prompt: <current dir>(branch)$ + colors
    function parse_git_branch { 
        git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/' 
    } 
    # export PS1="\A${GREEN_WHITE}\w${RED}\$(parse_git_branch)${RESETCOLOR} "
    export PS1="\\n\A${GREEN}\w${RED}\$(parse_git_branch)${RESETCOLOR} " 

    # Customize secondary prompt (second line after '\' sign):
    export PS2='> '
}

prompt

# Bat Theme
export BAT_THEME="GitHub"

# Enable the fuck
eval $(thefuck --alias)

# Enable jenv
export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# Set Maven to use jenv
# echo JAVA_HOME=$(/usr/libexec/java_home -v $(jenv version-name)) > ~/.mavenrc
# source ~/.mavenrc

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
