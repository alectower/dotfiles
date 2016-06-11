autoload -U promptinit && promptinit
autoload -U colors && colors

git_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null)
  if [[ $ref == "" ]]; then
    branch=""
  else
    branch="("${ref#refs/heads/}")"
  fi

  PROMPT="%D{%K:%M:%S} %{$fg[red]%}%~ %{$reset_color%}$branch "
}

precmd() { git_branch }

TMOUT=1
TRAPALRM() { zle reset-prompt }
