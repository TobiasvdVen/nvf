{lib, ...}: let
  inherit (lib.options) mkEnableOption;
  inherit (lib.nvim.types) mkPluginSetupOption;
in {
  options.vim.presenterm = {
    enable = mkEnableOption "presenterm";
    setupOpts = mkPluginSetupOption "presenterm" {};
  };
}
