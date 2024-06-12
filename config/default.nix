{
  imports = [
    ./options.nix
    ./keymap.nix
    ./plugins
  ];
  extraConfigLua = builtins.readFile ./neovide.lua;
}
