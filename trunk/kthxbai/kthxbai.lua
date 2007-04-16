

local msgcache, levelcache, whopending = {}, {}
local minlevel = 5

local orig = ChatFrame_MessageEventHandler


local orig2 = SendChatMessage
SendChatMessage = function(msg, chattype, lang, targ, ...)
	if chattype == "WHISPER" then
		levelcache[targ] = 70
	end

	return orig2(msg, chattype, lang, targ, ...)
end


local function debug(t)
--~ 	ChatFrame5:AddMessage(t)
end


local function IsFriend(name)
	for i=1,GetNumFriends() do
		if GetFriendInfo(i) == name then return true end
	end

	if not IsInGuild() then return end

	for i=1,GetNumGuildMembers() do
		if GetGuildRosterInfo(i) == name then return true end
	end
end


local function ProcessMessages(t)
	local argt = {arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, this=this}

	for i,v in ipairs(t) do
		arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = unpack(v)
		this = v.this
		orig("CHAT_MSG_WHISPER")
	end

	arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9 = unpack(argt)
	this = argt.this
end


local function PurgeCache()
	for i,v in pairs(msgcache) do
		if levelcache[i] and levelcache[i] >= minlevel then
			debug(i.." passes level check, processing messages")
			ProcessMessages(v)
			msgcache[i] = nil
		end
	end
end


ChatFrame_MessageEventHandler = function(event)
	if event == "CHAT_MSG_SYSTEM" and whopending then
		debug("Blocked system message\""..arg1.."\"")
		if string.find(arg1, "%d+ player.? total") then
			local numWhos, totalCount = GetNumWhoResults()
			assert(numWhos == totalCount, "Too many who results!")

			for i=1,numWhos do
				local charname, _, level = GetWhoInfo(i)
				levelcache[charname] = level
				debug("Saving "..charname.." = "..level)
			end

			debug("Restoring system messages")
			whopending = nil

			debug("Purging cache of accepted messages")
			PurgeCache()
		end
		return
	end

	if event ~= "CHAT_MSG_WHISPER" or IsFriend(arg2) or (levelcache[arg2] and levelcache[arg2] >= minlevel) then return orig(event) end

	if not levelcache[arg2] then
		if not msgcache[arg2] then msgcache[arg2] = {} end
		table.insert(msgcache[arg2], {arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8, arg9, this=this})
		debug("Queued message, sending who")

		whopending = true
		SendWho(arg2)
		debug("Who sent")
	end
end


local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", function(frame)
	if IsInGuild() then GuildRoster() end
	if GetNumFriends() > 0 then ShowFriends() end

	frame:UnregisterEvent("PLAYER_LOGIN")
	frame:SetScript("OnEvent", nil)
end)

