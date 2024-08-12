# dotfiles
New computer setup guide and the related dotfiles

# Basics

1. Set mouse speed to max
2. Set text to small
3. Make dock tiny
4. Turn off spaces rearranging based on most recently used
4. Customise Finder sidebar
5. Install [Hombrew](https://brew.sh/)
6. Install base apps with `brew install --cask zed figma arc raycast things craft fantastical superhuman slack discord bartender flux`

# Code

1. Install Xcode
2. Set up [Github authentication via SSH](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
3. Clone the dotfiles repo - `git clone git@github.com:devneill/dotfiles.git`
4. Add the configs to their appropriate locations
6. Install brew apps: `brew install fish mise font-fira-code font-fira-code-nerd-font`
7. Install Fisher plugin manager `curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher`
8. Install Fisher plugins
  1. Easy directory jumping - `fisher install jethrokuan/z`
  2. Hydro prompt - `fisher install jorgebucaran/hydro` & give it some color with `set --universal hydro_color_prompt magenta` & `set --universal hydro_color_git magenta`
9. Set up nice git diffing like [cpojer](https://cpojer.net/posts/the-perfect-development-environment#bat-and-delta)
	1. Make sure you have loaded the `.gitconfig` from this repo
	2. `brew install bat git-delta`
	3. `mkdir -p "$(bat --config-dir)/themes" && cd "$(bat --config-dir)/themes"`
	4. load themes into `.config/bat/themes` with `git clone git@github.com:cpojer/licht-theme.git` & `git clone git@github.com:cpojer/dunkel-theme.git`
	5. load themes with `bat cache --build`
10. Setup a tool version manager - I use [mise](https://mise.jdx.dev/) - its a nice, versatile one with a fairly good dx.
  1. Add the usage CLI tool for mise autocompletions - `mise use -g usage`
11. Install node with `mise install node@lts`
12. Add [Refined Github](https://github.com/refined-github/refined-github) to your browser
