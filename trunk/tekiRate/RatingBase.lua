
local WEAPON_SKILL  = 2.5
local DEFENSE_SKILL = 1.5
local DODGE         = 12
local PARRY         = 20
local BLOCK         = 5
local HIT_MELEE     = 10
local HIT_RANGED    = 10
local HIT_SPELL     = 8
local CRIT_MELEE    = 14
local CRIT_RANGED   = 14
local CRIT_SPELL    = 14
local HASTE_MELEE   = 10
local HASTE_RANGED  = 10
local HASTE_SPELL   = 10
local RESILIENCE    = 25

tekiRate_RatingBase = {
	Defense = DEFENSE_SKILL,
	Dodge = DODGE,
	"Shield Block" = BLOCK,
	Block = BLOCK,
	Parry = PARRY,

	"Spell Critical Strike" = CRIT_SPELL,
	"Spell Critical Hit" = CRIT_SPELL,
	"Spell Critical" = CRIT_SPELL,
	"Spell Crit" = CRIT_SPELL,
	"Ranged Critical Strike" = CRIT_RANGED,
	"Ranged Critical Hit" = CRIT_RANGED,
	"Ranged Critical" = CRIT_RANGED,
	"Ranged Crit" = CRIT_RANGED,
	"Critical Strike" = CRIT_MELEE,
	"Critical Hit" = CRIT_MELEE,
	Crit = CRIT_MELEE,

	"Spell Hit" = HIT_SPELL,
	"Ranged Hit" = HIT_RANGED,
	Hit = HIT_MELEE,

	Resilience = RESILIENCE,

	"Spell Haste" = HASTE_SPELL,
	"Ranged Haste" = HASTE_RANGED,
	Haste = HASTE_MELEE,
	Speed = HASTE_MELEE,

	Skill = WEAPON_SKILL,
	--[[
	"Dagger Skill = WEAPON_SKILL,
	"Sword Skill = WEAPON_SKILL,
	"Two%-Handed Swords Skill = WEAPON_SKILL,
	"Axe Skill = WEAPON_SKILL,
	"Bow Skill = WEAPON_SKILL,
	"Crossbow Skill = WEAPON_SKILL,
	"Gun Skill = WEAPON_SKILL,
	"Feral Combat Skill = WEAPON_SKILL,
	"Mace Skill = WEAPON_SKILL,
	"Polearm Skill = WEAPON_SKILL,
	"Staff Skill = WEAPON_SKILL,
	"Two%-Handed Axes Skill = WEAPON_SKILL,
	"Two%-Handed Maces Skill = WEAPON_SKILL,
	"Fist Weapons Skill = WEAPON_SKILL,
	--]]
}

for i,v in pairs(tekiRate_RatingBase) do
	tekiRate_RatingBase[string.lower(i)] = v
end
