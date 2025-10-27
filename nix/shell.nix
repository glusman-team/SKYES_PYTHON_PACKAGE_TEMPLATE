{pkgs, lib, ...}:
let
  py = pkgs.python313Packages;
in {
  devShells.default = pkgs.mkShell {
    name = "python313-packager";
    # ADD ANY PYTHON PACKAGES YOU WANT TO USE DURING TESTING HERE
    # VALID PACKAGES ARE ANYTHING AT https://search.nixos.org/packages
    # THAT HAVE python313package (USUALLY JUST WRITE THE PACKAGE NAME HERE)
    packages = with py; [
      pkgs.nushell
      setuptools
      python
      build
      wheel
      pip
    ];
  };
}