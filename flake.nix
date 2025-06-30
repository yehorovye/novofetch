{
  description = "A Nix-flake-based Vlang development environment";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";

    vlang-src = {
      url = "github:yehorovye/nix";
      flake = false;
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      flake-utils,
      vlang-src,
    }:
    flake-utils.lib.eachDefaultSystem (
      system:
      let
        pkgs = import nixpkgs { inherit system; };
        vlang = pkgs.callPackage (vlang-src + "/vlang.nix") { };
      in
      {
        packages.default = vlang;

        devShells.default = pkgs.mkShell {
          packages = [
            vlang
          ];
        };
      }
    );
}
