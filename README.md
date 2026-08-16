# timche's Dotfiles

> My personal dotfiles to setup my macOS machine

## Usage

1. _(Optional)_ Edit files to personal taste where applicable
1. Run files in `prerequisites` in order
   - Example: `./prerequisites/01-homebrew.sh`
1. Run files in `setups` in order
   - Example: `./setups/01-macos.sh`
1. Symlink files in `symlinks`
   - Example: `ln -sf ~/GitHub/dotfiles/symlinks/.gitconfig ~/.gitconfig`
   - Nested files need their parent directory to exist first
     - Example: `mkdir -p ~/.ssh && ln -sf ~/GitHub/dotfiles/symlinks/.ssh/config ~/.ssh/config`

Claude Code configuration lives in
[timche/claude-sandbox](https://github.com/timche/claude-sandbox).

## Additional Software from Elsewhere

### App Store

- [Lungo](https://apps.apple.com/us/app/lungo/id1263070803)

### GitHub

- [Gmail Desktop](https://github.com/timche/gmail-desktop)
