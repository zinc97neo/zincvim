{
  plugins.neo-tree = {
    enable = true;
    window = {
      position = "right";
      width = 26;
    };
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Neotree toggle";
      };
    }
  ];
}
