{
  plugins.bufferline = {
    enable = true;
    alwaysShowBufferline = false;
    offsets = [{
      filetype = "neo-tree";
      text = "File Explorer";
      text_align = "center";
      separator = true;
    }];
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
