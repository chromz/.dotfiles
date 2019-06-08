{
  allowUnfree = true;

  packageOverrides = pkgs: {
    polybar = pkgs.polybar.override {
      pulseSupport = true;
    };
    st = pkgs.st.override {
      conf = builtins.readFile "/home/chromz/dotfiles/st/config.h";
      patches = [
        /home/chromz/dotfiles/st/st-alpha-0.8.2.diff
      ];
    };
  };
}