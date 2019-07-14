{ pkgs ? import <nixpkgs> {} }:

with pkgs; (import <nixos-unstable> {}).neovim.override {
  configure = {
    customRC = lib.readFile ~/.config/nvim/init.vim;
    plug.plugins = with pkgs.vimPlugins; [fzf-vim fzfWrapper];
  };
}
