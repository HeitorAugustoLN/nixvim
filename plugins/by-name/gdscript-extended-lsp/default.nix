{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "gdscript-extended-lsp";
  package = "gdscript-extended-lsp-nvim";

  maintainers = [ lib.maintainers.HeitorAugustoLN ];

  settingsExample = {
    picker = "snacks";
  };
}
