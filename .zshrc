#
# ~/.zshrc
# 

# プロンプト
PROMPT="%F{green}[%n@%m]%f%% "
RPROMPT="%F{green}[%~]%f"
setopt transient_rprompt	# 右プロンプトを自動的に消す

# 補完機能
autoload -Uz compinit
compinit
setopt correct
setopt list_packed
zstyle ':completion:*' list-colors ''

# 先方予測
#autoload predict-on
#predict-on
 
# cd したら自動的にpushdする
setopt auto_pushd
# 重複したディレクトリをpushdしない
setopt pushd_ignore_dups
# ディレクトリの名前だけでcd
setopt auto_cd
 
# エイリアス
setopt complete_aliases

alias vim='vim -u ~/.vim/.vimrc'
alias -g L='| less'
alias -g G='| grep'
alias ls='ls --color=auto --hide="ntuser.dat*" --hide="NTUSER.DAT*"'
alias ll='ls -lF' 
alias la='ls -A'
 
# コマンド履歴
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups
setopt share_history
# コマンド履歴の検索
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# エディタ
export EDITOR=vim
 
# ターミナルをvi風キーバインドにする
bindkey -v
 
# 言語設定
export LANG=ja_JP.UTF-8
 
# 日本語ファイル名を表示可能にする
setopt print_eight_bit
 
# フローコントロールを無効にする
setopt no_flow_control
 
# '#' 以降をコメントとして扱う
setopt interactive_comments

# ビープ音を無効
setopt nolistbeep

