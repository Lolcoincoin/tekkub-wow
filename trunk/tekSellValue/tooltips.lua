--[[
	Ludwig_SellValue -
		Originally based on SellValueLite, this addon allows viewing of sellvalues
--]]

local lastMoney = 0

--[[ Local Functions ]]--

local function LinkToID(link)
	if type(link) == "string" then
		local _, _, id = string.find(link, "(%d+)")
		return tonumber(id)
	else return link end
end

local function SaveCost(id, totalCost, count)
	if count and count > 0 and totalCost and totalCost > 0 then
		if not Ludwig_SellValues then
			Ludwig_SellValues = {}
		end
		Ludwig_SellValues[id] = totalCost / count
	end
end

local function AddMoneyToTooltip(frame, id, count)
    if frame and id and count and Ludwig_SellValues and not MerchantFrame:IsVisible() then
		local price = Ludwig_SellValues[id]
		if price and price ~= 0 then
			frame:AddLine(SELLVALUE_COST, 1.0, 1.0,	0)
			SetTooltipMoney(frame, price * count)
			frame:Show()
		end
    end
end

--[[  Function Hooks ]]--

local orig1 = GameTooltip:GetScript("OnTooltipSetItem")
GameTooltip:SetScript("OnTooltipSetItem", function(self, ...)
	assert(self, "self is nil, someone isn't hooking correctly")

	local name, link = self:GetItem()
	local id = link and tonumber(select(3, string.find(link, "(%d+)")))
	if id then AddMoneyToTooltip(self, id) end

	if orig1 then return orig1(self, ...) end
end)


local Blizz_GameTooltip_SetBagItem = GameTooltip.SetBagItem;
GameTooltip.SetBagItem = function(self, bag, slot)
	Blizz_GameTooltip_SetBagItem(self, bag, slot)

	local id = LinkToID(GetContainerItemLink(bag, slot))
	local _, count = GetContainerItemInfo(bag, slot)
	AddMoneyToTooltip(GameTooltip, id, count)
end

local Bliz_GameTooltip_SetLootItem = GameTooltip.SetLootItem;
GameTooltip.SetLootItem = function(self, slot)
	Bliz_GameTooltip_SetLootItem(self, slot)

	local id = LinkToID(GetLootSlotLink(slot))
	local _, _, count = GetLootSlotInfo(slot)
	AddMoneyToTooltip(self, id, count)
end

local Bliz_SetHyperlink = GameTooltip.SetHyperlink;
GameTooltip.SetHyperlink = function(self, link, count)
	Bliz_SetHyperlink(self, link, count)

	if link then
		AddMoneyToTooltip(self, LinkToID(link) or link)
	end
end

local Bliz_ItemRefTooltip_SetHyperlink = ItemRefTooltip.SetHyperlink;
ItemRefTooltip.SetHyperlink = function(self, link, count)
	Bliz_ItemRefTooltip_SetHyperlink(self, link, count)

	if link then
		AddMoneyToTooltip(self, LinkToID(link) or link)
	end
end

local Bliz_GameTooltip_SetLootRollItem = GameTooltip.SetLootRollItem;
GameTooltip.SetLootRollItem = function(self, rollID)
	Bliz_GameTooltip_SetLootRollItem(self, rollID)

	local id = LinkToID(GetLootRollItemLink(rollID))
	local _, _, count = GetLootRollItemInfo(rollID)
	AddMoneyToTooltip(self, id, count)
end

local Bliz_GameTooltip_SetAuctionItem = GameTooltip.SetAuctionItem;
GameTooltip.SetAuctionItem = function(self, type, index)
	Bliz_GameTooltip_SetAuctionItem(self, type, index)

	local id = LinkToID(GetAuctionItemLink(type, index))
	local _, _, count = GetAuctionItemInfo(type, index)
	AddMoneyToTooltip(self, id, count)
end
