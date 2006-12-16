
local lib = {}
local grat = DongleStub("GratuityMini"):GetTooltip()
local sv

local gsctemplate = "{{gsc|%s|%s|%s}}"
local sctemplate = "{{sc|%s|%s}}"
local ctemplate = "{{c|%s}}"

WoWWiki = Dongle:New("WoWWiki")


local function hexit(r, g, b)
	r, g, b = r*255, g*255, b*255
	if r+g+b > (255*3-1) then return "" end
	return string.format("style=\"color: #%02x%02x%02x;\" ", r, g, b)
end

local quals = {"common", "uncommon", "rare", "epic", "legendary", [0] = "poor"}

local function WikifyTooltip(quality)
	local tip = "{| style=\"{{{{{1|Smalltooltipcss}}}}}\"\n"
	local s1 = "|-\n| colspan=2 %s| %s"
	local s2 = "|-\n| %s || align=right | %s "
	tip = tip..string.format(s1, "", "{{"..quals[quality].."|"..grat.L[1].."}}\n")
	for i=2,30 do
		local l, r = grat.L[i], grat.R[i]
		local lr, lg, lb = grat.Llines[i]:GetTextColor()
		if l then tip = tip..(r and string.format(s2, l, r) or (string.format(s1, hexit(lr, lg, lb), l))).."\n" end
	end
	return tip.."|}"
end


function WoWWiki:Initialize()
	if not WoWWikiDB then WoWWikiDB = {tips = {}, prices = {}, itemids = {}, icons = {}, vendors = {}} end
	sv = WoWWikiDB
	self:RegisterEvent("MERCHANT_SHOW")
end


function WoWWiki:MERCHANT_SHOW()
	local mname = UnitName("target")
	local mitemstr = ""
	local e = true

	for i=1,GetMerchantNumItems() do
		local name, texture, price, qty, numAvailable, isUsable, extendedCost = GetMerchantItemInfo(i)
		if name then
			if extendedCost then
				local honorPoints, arenaPoints, itemCount = GetMerchantItemCostInfo(i)
				price = ""
				local items
				for j=1,MAX_ITEM_COST do
					grat:SetMerchantCostItem(i, j)
					local cname = grat.L[1]
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

			sv.prices[name] = price
			sv.itemids[name] = id
			sv.icons[name] = texture

			mitemstr = mitemstr..(e and "\n|-" or "").. "\n| {{Vendor Item|"..item.."}}"
			e = not e

			if not sv.tips[name] then
				local link = GetMerchantItemLink(i)
				local _, _, id = string.find(link, "item:(%d+):(%d+):(%d+):(%d+)")
				local _, _, itemRarity = GetItemInfo(link)
				grat:SetHyperlink(link)
				sv.tips[name] = WikifyTooltip(itemRarity)
				self:Print("Found item", name)
			end
		end
	end

	sv.vendors[mname] = "{{Vendor Table Header}}"..mitemstr.."|}\n"
end


