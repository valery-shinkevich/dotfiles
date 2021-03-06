#! /usr/bin/fish

# Delete all abbreviations
for a in (abbr -U --list)
  if test "$a" != ""
    abbr -U --erase "$a"
  end
end

abbr -a -U -- .. 'cd ..'
abbr -a -U -- ... 'cd ../..'
abbr -a -U -- .... 'cd ../../..'
abbr -a -U -- ..... 'cd ../../../..'
abbr -a -U -- ackf 'ack -f | ack'
abbr -a -U -- agc 'sudo apt-get autoclean'
abbr -a -U -- agi 'sudo apt-get install'
abbr -a -U -- agr 'sudo apt-get remove'
abbr -a -U -- agu 'sudo apt-get update && sudo apt-get upgrade'
abbr -a -U -- cheat 'curl https://cheat.sh/'
abbr -a -U -- copy-screenshot 'cp (ls -t ~/Pictures/screenshot-* | head -n1) .'
abbr -a -U -- dco docker-compose
abbr -a -U -- g git
abbr -a -U -- ga 'git add'
abbr -a -U -- gc 'git commit -m'
abbr -a -U -- gco 'git checkout'
abbr -a -U -- gd 'git diff'
abbr -a -U -- gds 'git diff --staged'
abbr -a -U -- gf 'git fetch'
abbr -a -U -- gi git
abbr -a -U -- gl 'git log'
abbr -a -U -- gm 'git merge'
abbr -a -U -- gp 'git push'
abbr -a -U -- gpl 'git pull'
abbr -a -U -- gr 'git remote'
abbr -a -U -- grd 'git rebase -i origin/development'
abbr -a -U -- grm 'git rebase -i origin/master'
abbr -a -U -- gs 'git status'
abbr -a -U -- gst 'git stash'
abbr -a -U -- gti git
abbr -a -U -- jd 'cd ~/dotfiles'
abbr -a -U -- lg lazygit
abbr -a -U -- ll 'exa -al'
abbr -a -U -- mirror 'autorandr common'
abbr -a -U -- n npm
abbr -a -U -- nr 'npm run'
abbr -a -U -- ns 'nix-env -qaP | grep'
abbr -a -U -- open xdg-open
abbr -a -U -- paci 'sudo pacman -S'
abbr -a -U -- pacr 'sudo pacman -Rs'
abbr -a -U -- pacs 'pacman -Ss'
abbr -a -U -- pacu 'sudo pacman -Syu'
abbr -a -U -- r ranger
abbr -a -U -- rm 'trash'
abbr -a -U -- sdkman sdk
abbr -a -U -- t tig
abbr -a -U -- timestamp 'date +%s%3N'
abbr -a -U -- tl 'toilet -t -F border -f future --gay'
abbr -a -U -- v vim
abbr -a -U -- vi vim
abbr -a -U -- vmi vim
abbr -a -U -- öö ll

echo "Fish abbreviations updated"
