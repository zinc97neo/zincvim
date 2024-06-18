{
  plugins.bufferline = {
    enable = true;
    alwaysShowBufferline = false;
  };
  keymaps = [
    {
      mode = [ "n" ];
      key = "<S-L>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Switch to Next Buffer";
      };
    }
    {
      mode = [ "n" ];
      key = "<S-H>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Switch to Prev Buffer";
      };
    }
  ];
}
