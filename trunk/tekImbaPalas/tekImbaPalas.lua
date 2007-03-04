
local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event, txt)
	if string.find(txt, "Divine Shield") then  PlaySoundFile("Interface\\AddOns\\ImbaPalas\\imba.wav") end
end)

f:RegisterEvent("CHAT_MSG_SPELL_SELF_BUFF")
f:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_SELF_BUFFS")
f:RegisterEvent("CHAT_MSG_SPELL_FRIENDLYPLAYER_BUFF")
f:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_FRIENDLYPLAYER_BUFFS")
f:RegisterEvent("CHAT_MSG_SPELL_HOSTILEPLAYER_BUFF")
f:RegisterEvent("CHAT_MSG_SPELL_PERIODIC_HOSTILEPLAYER_BUFFS")
