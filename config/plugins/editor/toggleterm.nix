{ pkgs, ... }: {
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      shell = "${pkgs.zsh}/bin/zsh";
      float_opts = {
        border = "double";
      };
    };
  };
  keymaps = [
    {
      mode = [ "n" "t" ];
      key = "<c-\\>";
      action = "<cmd>ToggleTerm<cr>";
      options = {
        desc = "Toggle Terminal";
      };
    }
  ];
}
