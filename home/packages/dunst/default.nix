{pkgs, ...}:

{
  services.dunst = {
      enable = true;
      settings = {
        global = {
          follow = "mouse";
          indicate_hidden = true;
          shrink = false;
          transparency = 0;
          notification_height = 0;
          separator_height = 6;
          padding = 8;
          horizontal_padding = 8;
          frame_width = 4;
          frame_color = "#3d2b78";
          sort = true;
          idle_threshold = 0;
          font = "Press Start 2P";
          line_height = 0;
          markup = "full";
          format = "<b>%a</b>\n<i>%s</i>\n%b";
          alignment = "center";
          vertical_alignment = "center";
          show_age_threshold = -1;
          word_wrap = false;
          ellipsize = "middle";
          ignore_newline = false;
          stack_duplicates = true;
          hide_duplicate_count = false;
          show_indicators = false;
          icon_position = "left";
          history_length = 20;
          title = "Dunst";
          class = "Dunst";
          startup_notification = true;
          verbosity = "mesg";
          corner_radius = 0;
          ignore_dbusclose = false;
          mouse_left_click = "close_current";
          mouse_middle_click = "do_action";
          mouse_right_click = "do_action";
        };
        urgency_normal = {
          background = "#ff85c1";
          foreground = "#3d2b78";
          timeout = 5;
        };

        urgency_critical = {
          background = "#ffffff";
          foreground = "#db0101";
          timeout = 0;
        };
      };
  };
}
