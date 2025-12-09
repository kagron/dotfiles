---@type Wezterm
local wezterm = require("wezterm")

---@type Config
local config = wezterm.config_builder()
local action = wezterm.action
config.color_scheme = "Catppuccin Frappe"
config.font = wezterm.font("JetBrains Mono")
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.window_frame = {
	active_titlebar_bg = "#232634",
}
config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#303446",
			fg_color = "#c6d0f5",
		},
		inactive_tab = {
			bg_color = "#232634",
			fg_color = "#a5adce",
		},
		new_tab = {
			bg_color = "#303446",
			fg_color = "#c6d0f5",
		},
	},
}
config.hide_tab_bar_if_only_one_tab = true
config.keys = {
	{
		key = "s",
		mods = "CTRL|ALT",
		action = action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "v",
		mods = "CTRL|ALT",
		action = action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "DownArrow",
		mods = "ALT|SHIFT",
		action = action.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "UpArrow",
		mods = "ALT|SHIFT",
		action = action.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "UpArrow",
		mods = "ALT",
		action = action.ActivatePaneDirection("Up"),
	},
	{
		key = "DownArrow",
		mods = "ALT",
		action = action.ActivatePaneDirection("Down"),
	},
	{
		key = "LeftArrow",
		mods = "ALT|SHIFT",
		action = action.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "RightArrow",
		mods = "ALT|SHIFT",
		action = action.AdjustPaneSize({ "Right", 5 }),
	},
	{
		key = "RightArrow",
		mods = "ALT",
		action = action.ActivatePaneDirection("Right"),
	},
	{
		key = "LeftArrow",
		mods = "ALT",
		action = action.ActivatePaneDirection("Left"),
	},
}

return config
