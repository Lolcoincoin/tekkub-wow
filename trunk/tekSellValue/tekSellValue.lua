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

--[[ Event Handler ]]--

CreateFrame("GameTooltip", "LudwigSellValue", nil, "GameTooltipTemplate")

LudwigSellValue:SetScript("OnEvent", function()
	for bag = 0, NUM_BAG_FRAMES do
		for slot = 1, GetContainerNumSlots(bag) do
			local id = LinkToID(GetContainerItemLink(bag, slot))
			local _, count = GetContainerItemInfo(bag, slot)

			if id and id ~= "" then
				lastMoney = 0
				LudwigSellValue:SetBagItem(bag, slot)
				SaveCost(id, lastMoney, count)
			end
		end
	end
end)
LudwigSellValue:RegisterEvent("MERCHANT_SHOW")

LudwigSellValue:SetScript("OnTooltipAddMoney", function()
	if not InRepairMode() then
		lastMoney = arg1
	end
end)