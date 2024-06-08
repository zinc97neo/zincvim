{
  description = "Zinc' Neovim configuration, declaratively written using Nix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts";
  };

  outputs = { nixvim, flake-parts, ... } @ inputs: flake-parts.lib.mkFlake { inherit inputs; } {
    systems = [
      "x86_64-linux"
      "aarch64-linux"
      "x86_64-darwin"
      "aarch64-darwin"
    ];

    perSystem = { pkgs, system, ... }:
      let
        nixvimLib = nixvim.lib.${system};
        nixvim' = nixvim.legacyPackages.${system};
        nixvimModule = {
          inherit pkgs;
          module = import ./config; # import the module directly
          # You can use `extraSpecialArgs` to pass additional arguments to your module files
          extraSpecialArgs = {
            # inherit (inputs) foo;
          };
        };
        zincvim = nixvim'.makeNixvimWithModule nixvimModule;
      in
      {
        checks = {
          # Run `nix flake check .` to verify that your config is not broken
          default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
        };

        packages = {
          # Lets you run `nix run .` to start nixvim
          default = pkgs.stdenv.mkDerivation {
            pname = "zincvim";
            version = "0.0.1";
            src = zincvim;
            buildInputs = [ zincvim pkgs.rsync ];
            installPhase = ''
              mkdir -p $out
              rsync -av --exclude=bin/nvim $src/ $out/
              chmod +w $out/bin
              cp $src/bin/nvim $out/bin/zincvim
              chmod -w $out/bin
            '';
          };
        };
      };
  };
}
