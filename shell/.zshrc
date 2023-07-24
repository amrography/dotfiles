# Fig pre block. Keep at the top of this file.
[[ -f "$HOME/.fig/shell/zshrc.pre.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.pre.zsh"
# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_CUSTOM=$HOME/.dotfiles/misc/oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# Hide username in prompt
DEFAULT_USER=`whoami`

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
dex
git
composer
zsh-select
zsh-completions
zsh-autosuggestions
zsh-syntax-highlighting
macos
artisan
)

source $ZSH/oh-my-zsh.sh

export PATH=Users/$DEFAULT_USER/.rvm/gems/ruby-2.1.2/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin"
. $HOME/.dotfiles/shell/z.sh

# Sudoless npm https://github.com/sindresorhus/guides/blob/master/npm-global-without-sudo.md
NPM_PACKAGES="${HOME}/.npm-packages"
export PATH="$PATH:$NPM_PACKAGES/bin"
# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"

export PATH=$HOME/.dotfiles/bin:$PATH
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Import ssh keys in keychain
ssh-add -A 2>/dev/null;

# Enable autosuggestions
# source ~/.oh-my-zsh-custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Extra paths
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH

#ANDROID
export PATH=/Users/amrokhaled/Library/Android/sdk/platform-tools:$PATH
export ANDROID_SDK_ROOT=/Users/amrokhaled/Library/Android/sdk
export ANDROID_STUDIO="/Applications/Android Studio Preview.app/Contents/MacOS"
# export GRADLE_PATH="/Users/amrokhaled/.gradle/wrapper/dists/gradle-7.4-bin/c0gwcg53nkjbqw7r0h0umtfvt/gradle-7.4/bin"
# export PATH="$PATH:$GRADLE_PATH:$ANDROID_STUDIO"

# export JAVA_HOME=/Users/amrokhaled/Library/Java/JavaVirtualMachines/liberica-1.8.0_345
# export PATH=/Users/amrokhaled/Library/Java/JavaVirtualMachines/liberica-1.8.0_345/bin/javac:$PATH

# export JAVA_HOME=/Users/amrokhaled/Library/Java/JavaVirtualMachines/corretto-11.0.17/Contents/Home
# export PATH=/Users/amrokhaled/Library/Java/JavaVirtualMachines/corretto-11.0.17/Contents/Home/bin/javac:$PATH

export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export CAPACITOR_ANDROID_STUDIO_PATH="/Applications/Android Studio Preview.app"
export PATH=$PATH:/usr/local/opt/rabbitmq/sbin

#export PATH="/usr/local/opt/php@7.4/bin:$PATH"
#export PATH="/usr/local/opt/php@7.4/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"
