{ pkgs, ... }:
{
  imports = [
    ./bufferline.nix
    ./colortheme.nix
    ./lualine.nix
  ];
  extraPlugins = with pkgs.vimPlugins; [
    dropbar-nvim
  ];
  plugins.nvim-colorizer.enable = true;
}
