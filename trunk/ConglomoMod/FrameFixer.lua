
if not ConglomoMod then ConglomoMod = {} end


function ConglomoMod:FixFrames()
	GameTooltip_SetDefaultAnchor = function (tooltip, parent)
		tooltip:SetOwner(parent, "ANCHOR_NONE")
		tooltip:SetPoint("BOTTOMRIGHT", "WorldFrame", "BOTTOMRIGHT", -100, 12)
	end

	local escframes = {
		"WatchDogOptions",
		"WatchDogOptions_ClickCastings",
		"myDebugFrame",
	}
	for _,val in escframes do table.insert(UISpecialFrames,val) end

	WorldFrame:ClearAllPoints()
	WorldFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, 0)
	WorldFrame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMRIGHT", 0, 144)
end


function ConglomoMod:BindtoWorld(framename)
end


function ConglomoMod:HookFuncs()
end

