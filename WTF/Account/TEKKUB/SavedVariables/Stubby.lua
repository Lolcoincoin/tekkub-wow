
StubbyConfig = {
	["addinfo"] = {
		["Enchantrix"] = "Enchantrix|Display information in item tooltips pertaining to the results of disenchanting said item.  [3.4.3] This AddOn is licenced under the GNU GPL, see GPL.txt for details.",
		["EnhTooltip"] = "EnhTooltip|Used to display enhanced tooltips under the original tooltip or in the original tooltip, contains hooking functions for almost all major in game item tooltips [3.4.3] This AddOn is licenced under the GNU GPL, see GPL.txt for details.",
	},
	["configs"] = {
		["enchantrix"] = {
			["tekkub:loadtype"] = "always",
		},
	},
	["inspected"] = {
		["Enchantrix"] = true,
		["EnhTooltip"] = true,
	},
	["boots"] = {
		["enchantrix"] = {
			["commandhandler"] = "		local function cmdHandler(msg)\
			local i,j, cmd, param = string.find(string.lower(msg), \"^([^ ]+) (.+)$\")\
			if (not cmd) then cmd = string.lower(msg) end\
			if (not cmd) then cmd = \"\" end\
			if (not param) then param = \"\" end\
			if (cmd == \"load\") then\
				if (param == \"\") then\
					Stubby.Print(\"Manually loading Enchantrix...\")\
					LoadAddOn(\"Enchantrix\")\
				elseif (param == \"always\") then\
					Stubby.Print(\"Setting Enchantrix to always load for this character\")\
					Stubby.SetConfig(\"Enchantrix\", \"LoadType\", param)\
					LoadAddOn(\"Enchantrix\")\
				elseif (param == \"never\") then\
					Stubby.Print(\"Setting Enchantrix to never load automatically for this character (you may still load manually)\")\
					Stubby.SetConfig(\"Enchantrix\", \"LoadType\", param)\
				else\
					Stubby.Print(\"Your command was not understood\")\
				end\
			else\
				Stubby.Print(\"Enchantrix is currently not loaded.\")\
				Stubby.Print(\"  You may load it now by typing |cffffffff/enchantrix load|r\")\
				Stubby.Print(\"  You may also set your loading preferences for this character by using the following commands:\")\
				Stubby.Print(\"  |cffffffff/enchantrix load always|r - Enchantrix will always load for this character\")\
				Stubby.Print(\"  |cffffffff/enchantrix load never|r - Enchantrix will never load automatically for this character (you may still load it manually)\")\
			end\
		end\
		SLASH_ENCHANTRIX1 = \"/enchantrix\"\
		SLASH_ENCHANTRIX2 = \"/enchant\"\
		SLASH_ENCHANTRIX3 = \"/enx\"\
		SlashCmdList[\"ENCHANTRIX\"] = cmdHandler\
	",
			["triggers"] = "		local loadType = Stubby.GetConfig(\"Enchantrix\", \"LoadType\")\
		if (loadType == \"always\") then\
			LoadAddOn(\"Enchantrix\")\
		else\
			Stubby.Print(\"Enchantrix is not loaded. Type /enchantrix for more info.\")\
		end\
	",
		},
	},
}