
TinyPadPages = {
	"    local width, height = UIParent:GetWidth(), 120\n    local hgap, vgap = 3, 10\n    local w = (width-hgap*4)/3\n\n    for _,i in ipairs({1,3,4,5,6}) do\n        local f = getglobal(\"ChatFrame\"..i)\n        if i ~= 1 then f:ClearAllPoints() end\n        f:SetWidth(w)\n        f:SetHeight(height)\n    end\n\n    ChatFrame3:SetPoint(\"TOPLEFT\", ChatFrame1, \"TOPRIGHT\", hgap, 0)\n    ChatFrame4:SetPoint(\"TOPLEFT\", ChatFrame3, \"TOPRIGHT\", hgap, 0)\n    ChatFrame5:SetPoint(\"BOTTOMRIGHT\", ChatFrame3, \"TOP\", 0, vgap)\n    ChatFrame6:SetPoint(\"BOTTOMLEFT\", ChatFrame3, \"TOPRIGHT\", -75, vgap)\n\nWorldFrame:ClearAllPoints()\nWorldFrame:SetPoint(\"TOPLEFT\", UIParent, \"TOPLEFT\", 0, -14)\nWorldFrame:SetPoint(\"RIGHT\", UIParent, \"RIGHT\")\nWorldFrame:SetPoint(\"BOTTOM\", ChatFrame4, \"TOP\")\n", -- [1]
	"COMBAT_TEXT_UPDATE\narg2 ENCHANTMENT_ADDED\n\nUNIT_INVENTORY_CHANGED\narg2 player", -- [2]
	"local t = \"item:1234\"\nCockpit:Print(string.find(t, \"(%d+)\"))\n", -- [3]
}
TinyPadSettings = {
	["Font"] = 2,
}
