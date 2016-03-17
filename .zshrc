export LANG=ja_JP.UTF-8

# zplug
source $ZPLUG_HOME/init.zsh

zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug load

# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# コマンド履歴の重複削除
setopt hist_ignore_dups
setopt hist_ignore_all_dups
# 同時起動zsh間でhistoryの共有
setopt share_history

# 補完
autoload -U compinit
compinit

# ~/.zsh/*.zshを読み込む
ZSHHOME="${HOME}/.zsh"

if [ -d $ZSHHOME -a -r $ZSHHOME -a -x $ZSHHOME ]; then
  for i in $ZSHHOME/*; do
    [[ ${i##*/} = *.zsh ]] && [ \( -f $i -o -h $i \) -a -r $i ] && . $i
  done
fi

# gitの補完を通常のファイル補完にする
__git_files() { _files }

# ls color
# GNU
#alias ls='ls --color=auto'
# BSD
alias ls='ls -G'

#anyenv
export PATH="$HOME/.anyenv/bin:$PATH"
eval "$(anyenv init - zsh)"


