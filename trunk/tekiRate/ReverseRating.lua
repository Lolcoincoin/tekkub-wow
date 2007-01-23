--[[
Name: ReverseRating
Revision: $Revision: 1 $
Developed by: Whitetooth@Cenarius (hotdogee@¤Ú«¢©i¯Sbaha)
Description: ReverseRating(rNumber, rType, level)
]]
----------------------------
-- ReverseRating Function --
----------------------------
-- Rating ID
RB_WEAPON_SKILL = 1
RB_DEFENSE_SKILL = 2
RB_DODGE = 3
RB_PARRY = 4
RB_BLOCK = 5
RB_HIT_MELEE = 6
RB_HIT_RANGED = 7
RB_HIT_SPELL = 8
RB_CRIT_MELEE = 9
RB_CRIT_RANGED = 10
RB_CRIT_SPELL = 11
RB_HASTE_MELEE = 12
RB_HASTE_RANGED = 13
RB_HASTE_SPELL = 14
RB_RESILIENCE = 15

-- Level 60 base rating
local RatingBase = {
	2.5, 1.5, 12, 20, 5,
	10, 10, 8, 14, 14,
	14, 10, 10, 10, 25
}

-- Formula reverse engineered by Whitetooth@Cenarius (hotdogee@¤Ú«¢©i¯Sbaha)
-- returns percentages
function ReverseRating(rNumber, rType)
	assert(type(rType) == "number", "Bad value for arg 2, expected number, got "..type(rType))
	assert(rType >=1 and rType <= 15, rType.. " is out of range for arg 2")

	local level = UnitLevel("player")
	if level >= 60 then
		return rNumber/RatingBase[rType] * ( (-3/82)*level + (131/41) )
	elseif level >= 10 then
		return rNumber/RatingBase[rType] / ( (1/52)*level - (8/52) )
	else
		return 0
	end
end