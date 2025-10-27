{
  description = "A Template For Python Packages";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    systems.url = "github:nix-systems/default";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };
  outputs = inputs @ {self, systems, nixpkgs, flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = import inputs.systems;
      perSystem = {pkgs, lib, config, ...}: {
        imports = [
          ./nix/shell.nix
        ];
      };
    };
}