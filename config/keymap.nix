{
  globals.mapleader = " ";
  keymaps = [
    # Window movement.
    {
      mode = [ "n" ];
      key = "<c-h>";
      action = "<c-w>h";
      options = {
        remap = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<c-j>";
      action = "<c-w>j";
      options = {
        remap = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<c-k>";
      action = "<c-w>k";
      options = {
        remap = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<c-l>";
      action = "<c-w>l";
      options = {
        remap = true;
      };
    }
    # Window resize
    {
      mode = [ "n" ];
      key = "<c-up>";
      action = "<cmd>resize +2<cr>";
    }
    {
      mode = [ "n" ];
      key = "<c-down>";
      action = "<cmd>resize +2<cr>";
    }
    {
      mode = [ "n" ];
      key = "<c-left>";
      action = "<cmd>vertical resize -2<cr>";
    }
    {
      mode = [ "n" ];
      key = "<c-right>";
      action = "<cmd>vertical resize +2<cr>";
    }
    # Window split
    {
      mode = [ "n" ];
      key = "<leader>-";
      action = "<C-W>s";
      options = {
        desc = "Split Window Horizontally";
        remap = true;
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>|";
      action = "<C-W>v";
      options = {
        desc = "Split Window Vertically";
        remap = true;
      };
    }
    # Misc
    {
      mode = [ "n" ];
      key = "<leader>qq";
      action = "<cmd>qa<cr>";
      options = {
        desc = "Quit All";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader>hh";
      action = "<cmd>nohlsearch<cr>";
      options = {
        desc = "Clear Search Highlight";
      };
    }
    {
      mode = [ "i" ];
      key = "jj";
      action = "<Esc>";
      options = {
        desc = "Clear Search Highlight";
      };
    }
  ];
}
