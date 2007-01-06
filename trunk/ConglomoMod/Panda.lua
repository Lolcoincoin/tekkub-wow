
if not ConglomoMod then ConglomoMod = {} end

SlashCmdList["PANDA"] = function () ConglomoMod:Panda() end
SLASH_PANDA1 = "/panda"

function ConglomoMod:Panda()
	if ConglomoMod.afk then
		if (GetNumPartyMembers() > 0) then
			SetCVar("autoClearAFK", ConglomoMod.aclearafk)
			SendChatMessage("I have returned, rejoyce!", "PARTY")
		else SitOrStand() end
		SendChatMessage("", "AFK")
		ConglomoMod.afk = nil
	else
		if (GetNumPartyMembers() > 0) then
			ConglomoMod.aclearafk = GetCVar("autoClearAFK")
			SetCVar("autoClearAFK", 0)
			FollowUnit("party1")
			SendChatMessage("I must heed the call of the panda!  I will return shortly.", "PARTY")
		else
			DEFAULT_CHAT_FRAME:AddMessage("Going AFK")
			SitOrStand()
		end
		ConglomoMod.afk = true
		SendChatMessage("I am a proud user of Panda Express!", "AFK")
	end
end


