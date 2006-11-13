
local lib = {}

function lib:CreateTooltip()
	self.vars = {}
	self.vars.tooltip = CreateFrame("GameTooltip")
	self.vars.tooltip:SetOwner(self.vars.tooltip, "ANCHOR_NONE")
	self.vars.Llines, self.vars.Rlines = {}, {}
	for i=1,30 do
		self.vars.Llines[i], self.vars.Rlines[i] = self.vars.tooltip:CreateFontString(), self.vars.tooltip:CreateFontString()
		self.vars.Llines[i]:SetFontObject(GameFontNormal); self.vars.Rlines[i]:SetFontObject(GameFontNormal)
		self.vars.tooltip:AddFontStrings(self.vars.Llines[i], self.vars.Rlines[i])
	end
end

function lib:CreateMethods()
	local methods = {"SetMerchantCostItem", "SetBagItem", "SetAction", "SetAuctionItem", "SetAuctionSellItem", "SetBuybackItem", "SetCraftItem", "SetCraftSpell", "SetHyperlink", "SetInboxItem", "SetInventoryItem", "SetLootItem", "SetLootRollItem", "SetMerchantItem", "SetPetAction", "SetPlayerBuff", "SetQuestItem", "SetQuestLogItem", "SetQuestRewardSpell", "SetSendMailItem", "SetShapeshift", "SetSpell", "SetTalent", "SetTrackingSpell", "SetTradePlayerItem", "SetTradeSkillItem", "SetTradeTargetItem", "SetTrainerService", "SetUnit", "SetUnitBuff", "SetUnitDebuff"}
	for _,m in pairs(methods) do
		self[m] = function(self, ...)
			self:Erase()
			return self.vars.tooltip[m](self.vars.tooltip, ...)
		end
	end

	self.Left, self.Right = {}, {}
	setmetatable(self.Left, {
		__index = function(t, key)
			if self.vars.tooltip:NumLines() >= key and self.vars.Llines[key] then
				local v = self.vars.Llines[key]:GetText()
				t[key] = v
				return v
			end
			return nil
		end,
	})
	setmetatable(self.Right, {
		__index = function(t, key)
			if self.vars.tooltip:NumLines() >= key and self.vars.Rlines[key] then
				local v = self.vars.Rlines[key]:GetText()
				t[key] = v
				return v
			end
			return nil
		end,
	})
end

function lib:Erase() --	Clears the tooltip completely, none of this "erase left, hide right" crap blizzard does
	self.vars.tooltip:ClearLines() -- Ensures tooltip's NumLines is reset
	for i=1,30 do
		self.vars.Rlines[i]:SetText() -- Clear text from right side (ClearLines only hides them)
		self.Left[i], self.Right[i] = nil, nil
	end
	if not self.vars.tooltip:IsOwned(self.vars.tooltip) then self.vars.tooltip:SetOwner(self.vars.tooltip, "ANCHOR_NONE") end
end

lib:CreateTooltip()
lib:CreateMethods()

------------------------------------------------------------------------------------------------------

local gsctemplate = "{{gsc|%s|%s|%s}}"
local sctemplate = "{{sc|%s|%s}}"
local ctemplate = "{{c|%s}}"

local e = {}
local f = CreateFrame("Frame")

f:SetScript("OnEvent", function()
	e[event]()
end)


local function print(...)
	ChatFrame1:AddMessage("WoWWiki: ".. table.concat({...}, ", "))
end


local function hexit(r, g, b)
	r, g, b = r*255, g*255, b*255
	if r+g+b > (255*3-1) then return "" end
	return string.format("style=\"color: #%02x%02x%02x;\" ", r, g, b)
end

local quals = {"common", "uncommon", "rare", "epic", "legendary", [0] = "poor"}

local function WikifyTooltip(quality)
	local tip = "{| style=\"{{{{{1|Smalltooltipcss}}}}}\"\n"
	local s1 = "|-\n| colspan=2 %s| %s"
	local s2 = "|-\n| %s || align=right | $s "
	tip = tip..string.format(s1, "", "{{"..quals[quality].."|"..lib.Left[1].."}}\n")
	for i=2,30 do
		local l, r = lib.Left[i], lib.Right[i]
		local lr, lg, lb = lib.vars.Llines[i]:GetTextColor()
		if l then tip = tip..(r and string.format(s2, l, r) or (string.format(s1, hexit(lr, lg, lb), l))).."\n" end
	end
	return tip.."|}"
end


function e.ADDON_LOADED()
	if arg1 == "WoWWiki" then
		if not WoWWikiDB then WoWWikiDB = {tips = {}, prices = {}, itemids = {}, icons = {}, vendors = {}} end
	end
end


function e.MERCHANT_SHOW()
	local mname = UnitName("target")
	local mitems = {}
	for i=1,GetMerchantNumItems() do
		local name, texture, price, qty, numAvailable, isUsable, extendedCost = GetMerchantItemInfo(i)
		if name then
			if extendedCost then
				local honorPoints, arenaPoints, itemCount = GetMerchantItemCostInfo(i)
				price = ""
				local items
				for j=1,MAX_ITEM_COST do
					lib:SetMerchantCostItem(i, j)
					local cname = lib.Left[1]
					local itemTexture, itemValue = GetMerchantItemCostItem(i, j)

					if cname and itemValue then items = (items or "").."|"..cname.."|"..itemValue end
				end
				if items then price = "{{Alt Currency"..items.."}}" end
			else
				price = price/qty
				local g = math.floor(price/10000)
				local s = math.floor((price - g*10000)/100)
				local c = price - g*10000 - s*100
				if g > 0 then price = string.format(gsctemplate, g, s, c)
				elseif s > 0 then price = string.format(sctemplate, s, c)
				else price = string.format(ctemplate, c) end
			end

			WoWWikiDB.prices[name] = price
			WoWWikiDB.itemids[name] = id
			WoWWikiDB.icons[name] = texture

			table.insert(mitems, name)
			if not WoWWikiDB.tips[name] then
				local link = GetMerchantItemLink(i)
				local _, _, slink, id = string.find(link, "(item:(%d+):(%d+):(%d+):(%d+))")
				local _, _, itemRarity = GetItemInfo(link)
				lib:SetHyperlink(link)
				WoWWikiDB.tips[name] = WikifyTooltip(itemRarity)
				print("Found item "..name)
			end
		end
	end

	local mitemstr = ""
	for i,item in ipairs(mitems) do
		local e = math.fmod(i,2) == 0
		mitemstr = mitemstr..(e and " || " or "|-\n|").."{{Vendor Item|"..item.."}}"..(e and "\n" or "")
	end
	WoWWikiDB.vendors[mname] = "{{Vendor Table Header}}\n"..mitemstr.."|}\n"
end


for event in pairs(e) do
	print("Registering "..event)
	f:RegisterEvent(event)
end
