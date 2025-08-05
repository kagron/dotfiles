---@type Wezterm
local wezterm = require("wezterm")

---@type Config
local config = wezterm.config_builder()
local action = wezterm.action
config.color_scheme = "Catppuccin Frappe"
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
