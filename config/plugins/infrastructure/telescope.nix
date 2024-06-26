{
  plugins.telescope = {
    enable = true;
  };

  keymaps = [
    {
      mode = [ "n" ];
      key = "<leader>/";
      action.__raw = ''
        function()
          require("telescope.builtin").live_grep()
        end
      '';
      options = {
        desc = "Live Grep";
      };
    }
    {
      mode = [ "n" ];
      key = "<leader><space>";
      action.__raw = ''
        function()
          require("telescope.builtin").find_files()
        end
      '';
      options = {
        desc = "Find Files";
      };
    }
  ];
}
