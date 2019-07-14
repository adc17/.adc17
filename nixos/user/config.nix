{
  packageOverrides = pkgs: with pkgs; {
    # lives in ~/.config/nixpkgs/config.nix
    # allowUnfree = true;
    # config.oraclejdk.accept_license = true;

    adcPackages = pkgs.buildEnv {
      name = "adc-packages";
      paths = [
        # clojure
        fd
        fzf
        gcc
        git
        htop
      	# openjdk
        python2
        python3
        ripgrep
        ruby
        rustup
	      stack
        tmux
        tree
        universal-ctags
        wget
        # leiningen
        (import <nixos-unstable> {}).neovim
      ];
    };
  };
}
