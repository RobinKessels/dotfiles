This repo includes config files for my dev setup.

List of tools:

- [Aerospace](https://github.com/nikitabobko/AeroSpace): Window manager, primarily used to create virtual spaces
- [JankyBorders](https://github.com/FelixKratz/JankyBorders): Lightweight window border system for macOS
- [Ghostty](https://ghostty.org/): Terminal emulator
- [zsh](https://www.zsh.org/): command-line interpreter for shell scripts
- [Neovim](https://github.com/neovim/neovim): Vim-fork focused on extensibility and usability
- [Zen Browser](https://zen-browser.app/): Browser with Workspaces, great for keeping tabs organized per project

Purpose:

The main idea behind this setup is to be able to navigate to your most used applications without having to search for them. It is an attempt at a non-cluttered workspace, focused on use for 1 monitor. However it can be adapted for use in a multi-screen setup.

Goal:

Have one setup script that installs my dev setup on any macOS device.

Installation:

Fork this repository as a starting point to make your personal setup. Check out your repository into ~/dotfiles
Then run the installation script, which will:

- Backup locally detected configuration files
- Brew install list of tools
- symlink dotfiles/config to ~/.config/

Your installed applications will look at ~/.config/ but these files are linked to the config in the ~/dotfiles repository. If you change your configuration you can commit the changes to the repo to keep your repo in sync.

Recommended MacOS Settings
...

Raycast settings are encrypted

To decrypt files with `git-crypt` using your stored GPG private key:

1. **Import your GPG private key:**
   - Save your exported key (from Bitwarden) to a file, e.g. `my-gpg-private-key.asc`.
   - Run:

     ```sh
     gpg --import my-gpg-private-key.asc
     ```

2. **Clone your git repo:**

   ```sh
   git clone git@github.com:RobinKessels/dotfiles.git
   cd dotfiles
   ```

3. **Unlock with git-crypt:**

   ```sh
   git-crypt unlock
   ```

   If your GPG key is loaded, `git-crypt` will decrypt the files automatically.
