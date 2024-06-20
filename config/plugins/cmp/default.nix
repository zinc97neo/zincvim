{
  imports = [
    ./nvim-cmp.nix
    ./luasnip.nix
  ];
  plugins = {
    friendly-snippets.enable = true;
    cmp-ai.enable = true;
    cmp-path.enable = true;
  };
}
