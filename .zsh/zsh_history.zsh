# zsh history
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# コマンド履歴の重複削除
setopt hist_ignore_dups
setopt hist_ignore_all_dups
# 同時起動zsh間でhistoryの共有
setopt share_history
