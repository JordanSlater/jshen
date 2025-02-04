#!/bin/bash
alias g="git"

git config --global alias.s status
git config --global alias.a add
git config --global alias.c checkout
git config --global alias.p pull
git config --global alias.b branch
git config --global alias.d diff
git config --global alias.f fetch

# detailed:
git config --global alias.l "log --graph --decorate --abbrev-commit --format=format:'%C(bold blue)%h%C(reset) - %C(dim green)%an %C(bold green)(%ar)%C(reset)%C(auto)%d%C(reset)%n      %C(bold yellow)%s%C(reset)'"

# minimal/loner:
git config --global alias.loner "log --graph --decorate --abbrev-commit --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)%<(15)%ar%C(reset) %C(bold yellow)%s%C(auto)%+d%C(reset)'"

alias gbh="git reflog show --format='%gs' | grep -oP 'checkout: moving from \K\S+'"
