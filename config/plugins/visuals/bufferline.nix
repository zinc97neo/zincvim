{
  plugins.bufferline = {
    enable = true;
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<C-L>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Switch to Next Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<C-H>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Switch to Prev Buffer";
      };
    }
  ];
}
