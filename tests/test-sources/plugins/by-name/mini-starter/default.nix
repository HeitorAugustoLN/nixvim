{ lib, ... }:
{
  empty = {
    plugins.mini-starter.enable = true;
  };

  example = {
    plugins.mini-starter = {
      enable = true;
      settings = {
        autoopen = true;
        content_hooks = [
          (lib.nixvim.mkRaw "MiniStarter.gen_hook.adding_bullet()")
          (lib.nixvim.mkRaw "MiniStarter.gen_hook.indexing('all', { 'Builtin actions' })")
          (lib.nixvim.mkRaw "MiniStarter.gen_hook.aligning('center', 'center')")
        ];
        evaluate_single = true;
        header = ''
          ███╗   ██╗██╗██╗  ██╗██╗   ██╗██╗███╗   ███╗
          ████╗  ██║██║╚██╗██╔╝██║   ██║██║████╗ ████║
          ██╔██╗ ██║██║ ╚███╔╝ ██║   ██║██║██╔████╔██║
          ██║╚██╗██║██║ ██╔██╗ ╚██╗ ██╔╝██║██║╚██╔╝██║
          ██║ ╚████║██║██╔╝ ██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
        '';
        items = [
          (lib.nixvim.mkRaw "MiniStarter.sections.builtin_actions()")
          (lib.nixvim.mkRaw "MiniStarter.sections.recent_files(10, false)")
          (lib.nixvim.mkRaw "MiniStarter.sections.recent_files(10, true)")
          (lib.nixvim.mkRaw "MiniStarter.sections.sessions(5, true)")
        ];
      };
    };
  };
}
