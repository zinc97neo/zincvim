{
  imports = [
    ./neoformat.nix
  ];
  plugins = {
    emmet.enable = true;
    neogen.enable = true;
    nvim-autopairs.enable = true;
    comment = {
      enable = true;
      settings = {
        toggler = {
          block = "gbc";
          line = "gcc";
        };
      };
    };
  };
}
