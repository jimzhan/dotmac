# ============================================================
# Personnal Aliases
# ============================================================
alias vi="vim"
alias ag="ag --page=less"
alias du="du -sh"
alias lstcp="lsof -i -n -P | grep TCP"
alias lsudp="lsof -i -n -P | grep UDP"

if [ -x /usr/local/bin/gls ]; then
  alias ls="gls --color=auto --group-directories-first"
fi
