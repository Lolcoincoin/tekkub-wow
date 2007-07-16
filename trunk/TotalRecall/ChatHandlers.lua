

local _G = getfenv(0)
local flags = {AFK = CHAT_FLAG_AFK, DND = CHAT_FLAG_DND, GM = CHAT_FLAG_GM}
local template = setmetatable({}, {
	__index = function(t, i)
		local v = "[%s] ".. _G["CHAT_"..i.."_GET"].. "%s"
		t[i] = v
		return v
	end,
})


local Chat = {}
TotalRecallChatHandlers = Chat


function Chat:GUILD_MOTD(event, msg, unitname, _, _, _, afkdnd)
	if not msg or msg:len() == 0 then return end
	local info = ChatTypeInfo["GUILD"]
	self:AddMessage(GUILD_MOTD_TEMPLATE:format(msg), info.r, info.g, info.b, info.id);
end


function Chat:CHAT_MSG_SAY(event, msg, unitname, _, _, _, afkdnd)
	local chattype = event:sub(10)
	local info = ChatTypeInfo[chattype]

	local pflag = afkdnd and flags[afkdnd] or ""
	local body = template[chattype]:format(date("%X"), pflag.."["..unitname.."]", msg)

	self:AddMessage(body, info.r, info.g, info.b, info.id)
end
Chat.CHAT_MSG_OFFICER = Chat.CHAT_MSG_SAY
Chat.CHAT_MSG_GUILD = Chat.CHAT_MSG_SAY
Chat.CHAT_MSG_WHISPER_INFORM = Chat.CHAT_MSG_SAY
Chat.CHAT_MSG_WHISPER = Chat.CHAT_MSG_SAY


--~ function Chat:CHAT_MSG_EMOTE(event, msg, unitname, _, _, _, afkdnd)
--~ 	local chattype = event:sub(10)
--~ 	local info = ChatTypeInfo[chattype]

--~ 	local pflag = afkdnd and flags[afkdnd] or ""
--~ 	local body = format(template[chattype], date("%X"), pflag..unitname, unitname, msg)

--~ 	self:AddMessage(body, info.r, info.g, info.b, info.id)
--~ end


--~ function Chat:CHAT_MSG_RAID_BOSS_EMOTE(event, msg, unitname)
--~ 	local chattype = event:sub(10)
--~ 	local info = ChatTypeInfo[chattype]

--~ 	local body = template[chattype]:format(date("%X"), unitname, msg)

--~ 	self:AddMessage(body, info.r, info.g, info.b, info.id)
--~ end
--~ CHAT_MSG_MONSTER*


function Chat:CHAT_MSG_SYSTEM(event, msg, unitname, _, _, _, afkdnd)
	local info = ChatTypeInfo[event:sub(10)]
	self:AddMessage(string.format("[%s] %s", date("%X"), msg), info.r, info.g, info.b, info.id)
end
Chat.CHAT_MSG_TEXT_EMOTE = Chat.CHAT_MSG_SYSTEM
Chat.CHAT_MSG_SKILL      = Chat.CHAT_MSG_SYSTEM
Chat.CHAT_MSG_LOOT       = Chat.CHAT_MSG_SYSTEM
Chat.CHAT_MSG_MONEY      = Chat.CHAT_MSG_SYSTEM
--~ CHAT_MSG_COMBAT_*
--~ CHAT_MSG_SPELL_*
--~ CHAT_MSG_BG_SYSTEM_*
