{ ... }: {
  config = {
    # Options.
    opts = {
      # Indent settings.
      tabstop = 2;
      shiftwidth = 2;
      expandtab = true;
      # nowrap
      wrap = false;
      # Line number.
      number = true;
      relativenumber = true;
      signcolumn = "yes";
      cursorline = true;
      splitright = true;
      splitbelow = true;
      # Search case sensitivity.
      ic = true;
    };

    # Clipboard.
    clipboard = {
      register = "unnamedplus";
      providers = {
        xclip.enable = true;
        wl-copy.enable = true;
        xsel.enable = true;
      };
    };
  };
}
