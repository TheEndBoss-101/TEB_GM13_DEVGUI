--[[
	Forked from:
	https://github.com/Xalalau/Anomaly-Research-Center-ARC

	Created by Xalalau(Og Addon) and TheEndBoss_101
	MIT License
]]

C_GM13B_GUI = { -- Community GM13 Developer GUI
	luaFolder = "theendboss101/cgm13bgui",
	Gui = {}
}

hook.Add("Initialize", C_GM13B_GUI.luaFolder .. "_int", function()
	GM13:IncludeBase(C_GM13B_GUI)
end)
