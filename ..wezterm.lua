local wezterm = require("wezterm")
local config = {}
local dimmer = { brightness = 0.1 }
local act = wezterm.action

config.font = wezterm.font("JetBrains Mono")
config.default_prog = { "powershell.exe", "-NoLogo" }
config.background = {
	{
		source = {
			File = "C:\\Users\\Desmond\\Pictures\\Super-heroes\\iron-man.jpg",
		},
		hsb = dimmer,
		horizontal_align = "Center",
	},
}
config.keys = {
	-- paste from the clipboard
	{ key = "V", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	-- paste from the primary selection
	{ key = "V", mods = "CTRL", action = act.PasteFrom("PrimarySelection") },
}
return config
