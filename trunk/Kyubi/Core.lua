
local colors = {"|cffff88ff", "|cff88ffff", "|cffffff88"}
local cf = ChatFrame5


-------------------------------------
--      Namespace Declaration      --
-------------------------------------

Kyubi = AceLibrary("AceAddon-2.0"):new("AceEvent-2.0", "AceConsole-2.0", "AceDB-2.0")
Kyubi:RegisterDB("KyubiDB")

function Kyubi:OnInitialize()
	self:RegisterDefaults('profile', {
		filters = {},
	})
	self:RegisterChatCommand({'/kyubi'}, {
		type = 'group',
		args = {
			AddFilter = {
				name = "Add Filter",
				type = 'text',
				desc = "Add a new event filter regex",
				usage = "<any string>",
				get = false,
				set = function(v)
					table.insert(self.db.profile.filters, v)
				end,
				validate = borderList,
				order = 1,
			},
			DeleteFilter = {
				name = "Delete Filter",
				type = 'text',
				desc = "Delete a regex filter",
				get = false,
				set = function(v)
					local i
					for idx,val in ipairs(self.db.profile.filters) do if v == val then i = idx end end
					if i then table.remove(self.db.profile.filters, i) end
				end,
				validate = self.db.profile.filters,
				order = 2,
				disabled = function() return not next(self.db.profile.filters) end,
			},
		}
	})
end


---------------------------
--      Ace Methods      --
---------------------------

function Kyubi:OnEnable()
	self:RegisterAllEvents("EventsHandler")
end


-----------------------------
--      Event Handler      --
-----------------------------

local function myconcat(...)
	local str = "|cffff8888".. select(1, ...)
	for i=2,select("#", ...) do
		local v = select(i, ...)
		local t = type(v)
		str = str.. sep.. v and (colors[math.fmod(i-1,3)+1].. " | arg ".. i.. " ("..t..")"..
			((t == "string" or t == "number") and (" "..v) or t == "boolean" and (v and " true" or ": false") or "")) or ""
	end
	return str
end


function Kyubi:EventsHandler(event, ...)
	if not self:IsShown(event) then return end
	cf:AddMessage(myconcat(event, ...))
end


function Kyubi:IsShown(event)
	if not event then return end

	if not next(self.db.profile.filters) then return true end
	for i,v in pairs(self.db.profile.filters) do
		if string.find(event, v) then return true end
	end
end

