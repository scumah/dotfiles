# My dotfiles

Here i'll be updating my host files and the steps to setup a new system.

## Steps:

### Download and install apps
- [Chrome](https://www.google.com/chrome/) (Set as default browser)
- [Firefox](https://www.mozilla.org/en-US/firefox/new/)
- [iTerm](https://www.iterm2.com/)
- [Atom](https://atom.io/)
- [Wavebox](https://wavebox.io/)
- [Sketch](https://www.sketchapp.com/)
- [BetterTouchTool](https://folivora.ai/)
- [Launchbar](https://www.obdev.at/products/launchbar/index.html)
- [ImageOptim](https://imageoptim.com/mac)
- [mac2imgur](https://github.com/mileswd/mac2imgur)

### Grab the .ssh folder from the old computer

### Clone this repo

`mkdir projects && cd projects && git clone git@github.com:scumah/dotfiles.git`

### Move config files to home and cleanup

`cp -a dotfiles/. ~ && rm ~/README.md ~/btt.json ~/iterm.json`

### Sync atom packages

 - Install [`package-sync`](https://atom.io/packages/package-sync) for atom
 - From atom, launch `Package Sync: Sync`

### Load iTerm config

`cp dotfiles/iterm.json ~/Library/Application Support/iTerm2/DynamicProfiles/iterm.json`

### Load BetterTouchTool config

BetterTouchTool > Preferences > Manage Presets > Import > Search `btt.json`
