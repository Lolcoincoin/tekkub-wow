
if not TekTech then TekTech = {} end


function TekTech:IsFriend(name)
	for i=1,GetNumFriends() do if GetFriendInfo(i) == name then return true end end
end


function TekTech:IsGuildie(name)
	if (IsInGuild()) then for i=1, GetNumGuildMembers() do if (GetGuildRosterInfo(i) == name) then return true end end end
end
