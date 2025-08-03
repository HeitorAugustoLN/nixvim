{ lib, ... }:
lib.nixvim.plugins.mkNeovimPlugin {
  name = "lackluster";
  packPathName = "lackluster.nvim";
  package = "lackluster-nvim";
  isColorscheme = true;

  maintainers = [ lib.maintainers.HeitorAugustoLN ];

  settingsExample = {
    disable_plugin.cmp = false;
    tweak_color = {
      lack = "#aaaa77";
      luster = "default";
      orange = "default";
      yellow = "default";
      green = "default";
      blue = "default";
      red = "default";
    };
  };
}
