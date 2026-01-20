{
  config,
  lib,
  pkgs,
  ...
}: let
  fontFamily = "JetBrains Mono";
in {
  programs.kitty = {
    enable = true;
    package = null;
    settings = {
      font_size = 12;
      font_family = "family='${fontFamily}' style='SemiBold'";
      bold_font = "family='${fontFamily}' style='Bold'";
      italic_font = "family='${fontFamily}' style='SemiBold Italic'";
      bold_italic_font = "family='${fontFamily}' style='Bold Italic'";

      window_padding_width = 4;
      tab_bar_style = "separator";
      tab_separator = "⠀";

      background = "#282828";
      foreground = "#d4be98";

      selection_background = "#d4be98";
      selection_foreground = "#282828";

      cursor = "#a89984";
      cursor_text_color = "background";

      active_tab_background = "#d4be98";
      active_tab_foreground = "#282828";
      active_tab_font_style = "bold";
      inactive_tab_background = "#282828";
      inactive_tab_foreground = "#a89984";
      inactive_tab_font_style = "normal";

      color0 = "#665c54";
      color8 = "#928374";
      color1 = "#ea6962";
      color9 = "#ea6962";
      color2 = "#a9b665";
      color10 = "#a9b665";
      color3 = "#e78a4e";
      color11 = "#d8a657";
      color4 = "#7daea3";
      color12 = "#7daea3";
      color5 = "#d3869b";
      color13 = "#d3869b";
      color6 = "#89b482";
      color14 = "#89b482";
      color7 = "#d4be98";
      color15 = "#d4be98";

      shell = lib.getExe pkgs.fish;
    };
  };
}
