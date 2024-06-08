{ pkgs, ... }: {
  plugins.treesitter = {
    enable = true;
  };
  extraPlugins = with pkgs.vimPlugins; [
    nvim-treesitter-context
  ];
}
