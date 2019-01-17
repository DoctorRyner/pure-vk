# default.nix
(import ./reflex-platform {}).project ({ pkgs, ... }: {
  useWarp = true;

  packages = {
    gui = ../gui;
  };

  shells = {
    ghc = [ "gui" ];
    ghcjs = [ "gui" ];
  };
})
