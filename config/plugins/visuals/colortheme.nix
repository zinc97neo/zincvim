{ pkgs, ... }: {
  extraPlugins = with pkgs.vimPlugins; [
    everforest
  ];
  extraConfigLua = builtins.readFile ./lua/colortheme.lua;
}
