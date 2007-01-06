
if not Tekkub then Tekkub = {} end


function Tekkub:Seal(seal)
	local hasseal = Tekkub:HasASeal();
	local judgecooling;
	local id = 0;
	local searchName;
	
	if ((UnitClass("player") ~= "Paladin") or (UnitLevel("player") < 4)) then return end
	
	while (searchName ~= "Judgement") do
		id = id + 1;
		searchName = GetSpellName(id,BOOKTYPE_SPELL);
	end
	_, judgecooling = GetSpellCooldown(id, BOOKTYPE_SPELL);

	if (hasseal and (judgecooling == 0) and (IsActionInRange(120) ~= 0) and UnitCanAttack("player", "target") and (UnitHealth("target") > 0)) then 
		CastSpellByName("Judgement");
		SpellStopCasting();
		hasseal = false
	end
	if (not hasseal) then CastSpellByName(seal); end
end


function Tekkub:HasASeal()
	local i = 1;
	while (UnitBuff("player",i)) do 
		if(string.find(UnitBuff("player",i),"SealOfFury")) then return true; end 
		if(string.find(UnitBuff("player",i),"ThunderBolt")) then return true; end 
		if(string.find(UnitBuff("player",i),"Holy_HolySmite")) then return true; end 
  	i = i + 1;
  end
end


