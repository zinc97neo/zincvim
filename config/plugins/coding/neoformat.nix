{ pkgs, ... }:
{
  extraPlugins = with pkgs.vimPlugins; [
    neoformat
  ];

  # Formatter packages
  extraPackages = with pkgs; [
    # Nix
    nixpkgs-fmt
    # C, C++, C#, and Java
    clang-tools
    # CMake
    cmake-format
    # Rust
    rustfmt
    # HTML, JSON, CSS, Js
    prettierd
    # Toml
    taplo
  ];

  # Auto format auto command
  autoCmd = [
    {
      event = [ "BufWritePre" ];
      command = "Neoformat";
    }
  ];

  extraConfigLua = ''
    vim.g.neoformat_cpp_clangformat = {
      exe = "${pkgs.clang-tools_17}/bin/clang-format",
      args = {
        "--style=file",
        "--fallback-style=google",
      },
      stdin = true,
    }
  '';
}
