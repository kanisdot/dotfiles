local wezterm = require 'wezterm';
return {
  -- color_scheme = "Doom One",
  -- font = wezterm.font("JetBrainsMono Nerd Font Mono"),
  -- font = wezterm.font("JetBrains Mono"),
  font = wezterm.font("JetBrainsMono Nerd Font"),
  font_size = 11,
  tab_bar_at_bottom = false,
  exit_behavior = "Close",
  hide_tab_bar_if_only_one_tab = true,
  window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
  },
  keys = {
    {key="Tab", mods="CTRL", action=wezterm.action{ActivateTabRelative=1}},
    {key="Tab", mods="CTRL|SHIFT", action=wezterm.action{ActivateTabRelative=-1}},
    {key="m", mods="CTRL|SHIFT", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
  }
}
