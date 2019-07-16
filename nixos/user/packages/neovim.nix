{ pkgs ? import <nixpkgs> {} }:

with pkgs; (import <nixos-unstable> {}).neovim.override {
  configure = {
    customRC = "execute 'source $HOME/.config/nvim/init.vim'";
    packages.myVimPackage = with pkgs.vimPlugins; {
      start = [ fzf-vim fzfWrapper ];
      opt = [ ];
    }; 
  };
}
