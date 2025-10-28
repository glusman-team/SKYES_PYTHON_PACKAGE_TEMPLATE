# Skye's Python Package Template (Version 1.0.0)

A Nix and NixDirenv Configured Environment To Easily Package Python Modules

## Usage

Ensure The Following Packages Are Installed To Your Nix Profile
```bash
nix profile install nixpkgs#direnv nixpkgs#nix-direnv
```

Ensure Nix Profile Is Added To Your Path
```bash
# ~/.bashrc
export PATH="$HOME/.nix-profile/bin:$PATH"
```

Then Enter The Environment
```bash
direnv allow
```

Then Use The Nushell Script To Build A Wheel For Your Package
```bash
nu build.nu
```
