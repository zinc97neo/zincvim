{
  imports = [
    ./options.nix
    ./plugins
  ];
  extraConfigLua = builtins.readFile ./neovide.lua;
}
