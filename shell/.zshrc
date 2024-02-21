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
fig
git
composer
zsh-completions
zsh-autosuggestions
zsh-syntax-highlighting
macos
)

source $ZSH/oh-my-zsh.sh

export PATH=Users/$DEFAULT_USER/.rvm/gems/ruby-2.1.2/bin:$PATH

# Load the shell dotfiles, and then some:
# * ~/.dotfiles-custom can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/shell/.{exports,aliases,functions}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done

for file in ~/.dotfiles-custom/shell/.{exports,aliases,functions,zshrc}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file"
done
unset file

# Load rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin"
. $HOME/.dotfiles/shell/z.sh

# Alias hub to git
eval "$(hub alias -s)"

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

# Setup xdebug
export XDEBUG_CONFIG="idekey=VSCODE"

# Enable autosuggestions
source ~/.dotfiles/misc/oh-my-zsh-custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh


# Extra paths
export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=/usr/local/bin:$PATH
export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/opt/mysql@8.0/bin:$PATH"
export PATH="/usr/local/opt/node@8/bin:$PATH"

export PATH="/usr/local/opt/node@12/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# do not update all homebrew stuff automatically
export HOMEBREW_NO_AUTO_UPDATE=1

export GPG_TTY=$(tty)
export PATH="/usr/local/opt/ncurses/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/ncurses/bin:$PATH"

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
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# ANDROID SDK
export ANDROID_HOME=/Users/akhaled/Library/Android/sdk
export JAVA_HOME=`/usr/libexec/java_home -v 15.0.2`
export PATH=/Users/$USER/Library/Android/sdk/tools:$PATH
export PATH=/Users/$USER/Library/Android/sdk/tools/bin:$PATH
export PATH=/Users/$USER/Library/Android/sdk/platform-tools:$PATH
export PATH=/usr/local/bin/php:$PATH
export PHP_CS_FIXER_IGNORE_ENV=1

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Fig post block. Keep at the bottom of this file.
[[ -f "$HOME/.fig/shell/zshrc.post.zsh" ]] && builtin source "$HOME/.fig/shell/zshrc.post.zsh"


# Herd injected PHP binary.
export PATH="/Users/amr/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/amr/Library/Application Support/Herd/config/php/82/"


# Herd injected PHP 8.1 configuration.
export HERD_PHP_81_INI_SCAN_DIR="/Users/amr/Library/Application Support/Herd/config/php/81/"
