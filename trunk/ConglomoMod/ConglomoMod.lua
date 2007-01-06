
if not ConglomoMod then ConglomoMod = {} end
ConglomoMod.pipe = "|"


function ConglomoMod:OnLoad()
	this:RegisterEvent("VARIABLES_LOADED")
	this:RegisterEvent("TRAINER_SHOW")

	GFY_WoW_ChatFrame_OnEvent = ChatFrame_OnEvent
	ChatFrame_OnEvent = function(event)
		if event == "CHAT_MSG_SAY" and string.find(arg1, "^|c.+|Hitem.+|h.+|h|r$") then return end
		return GFY_WoW_ChatFrame_OnEvent(event)
	end
end


function ConglomoMod:OnEvent()
	if (event == "VARIABLES_LOADED") then
		if (self.FixFrames) then self:FixFrames() end
	end
	if (event == "TRAINER_SHOW") then SetTrainerServiceTypeFilter("unavailable",0) end
end


function ConglomoMod:OnUpdate()
	if self.PopbarOnUpdate then self:PopbarOnUpdate() end
end


