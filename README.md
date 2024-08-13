# dotfiles
New computer setup guide and the related dotfiles

# Basics

1. Set mouse speed to max
1. Set text to small
1. Make dock tiny
1. Set Caps Lock to Control
1. Turn off spaces rearranging based on most recently used
1. Customise Finder sidebar
1. Install [Hombrew](https://brew.sh/)
1. Install base apps with `brew install --cask zed figma arc raycast things craft fantastical superhuman slack discord bartender flux cleanshot pixelsnap`

# Code

1. Install Xcode
1. Set up [Github authentication via SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
1. Clone the dotfiles repo - `git clone git@github.com:devneill/dotfiles.git`
1. Add the configs to their appropriate locations
1. Install brew apps: `brew install fish mise font-fira-code font-fira-code-nerd-font`
1. Install Fisher plugin manager `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`
1. Install Fisher plugins
  1. Easy directory jumping - `fisher install jethrokuan/z`
  1. Hydro prompt - `fisher install jorgebucaran/hydro` & give it some color with `set --universal hydro_color_prompt magenta` & `set --universal hydro_color_git magenta`
1. Set up nice git diffing like [cpojer](https://cpojer.net/posts/the-perfect-development-environment#bat-and-delta)
	1. Make sure you have loaded the `.gitconfig` from this repo
	1. `brew install bat git-delta`
	1. `mkdir -p "$(bat --config-dir)/themes" && cd "$(bat --config-dir)/themes"`
	1. load themes into `.config/bat/themes` with `git clone git@github.com:cpojer/licht-theme.git` & `git clone git@github.com:cpojer/dunkel-theme.git`
	1. load themes with `bat cache --build`
1. Setup a tool version manager - I use [mise](https://mise.jdx.dev/) - its a nice, versatile one with a fairly good dx.
  1. Add the usage CLI tool for mise autocompletions - `mise use -g usage`
1. Install node with `mise install node@lts`
1. Add [Refined Github](https://github.com/refined-github/refined-github) to your browser
