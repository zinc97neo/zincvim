{ pkgs, ... }: {
  plugins.toggleterm = {
    enable = true;
    settings = {
      direction = "float";
      shell = "${pkgs.zsh}/bin/zsh";
      float_opts = {
        border = "single";
        title_pos = "center";
      };
      winbar.enable = true;
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
