{
  imports = [
    ./neoformat.nix
  ];
  plugins = {
    neogen = {
      enable = true;
    };
    nvim-autopairs = {
      enable = true;
    };
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
