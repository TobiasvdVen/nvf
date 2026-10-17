{
  config,
  lib,
  ...
}: let
  inherit (lib.modules) mkIf;
  inherit (lib.nvim.dag) entryAnywhere;
  inherit (lib.nvim.lua) toLuaObject;

  cfg = config.vim.presenterm;
in {
  vim = mkIf cfg.enable {
    startPlugins = ["presenterm"];

    pluginRC.presenterm = entryAnywhere ''
      require("presenterm").setup(${toLuaObject cfg.setupOpts})
    '';
  };
}
