
if not ConglomoMod then ConglomoMod = {} end
ConglomoMod.bar = "|"

local aclearafk = nil
local bb_weap

local meleebar = 1
local rangebar = 2
local popbar = 6
local rangebutton = 14
local amhunter = false
local inpopmenu = false


function ConglomoMod:OnLoad()
	this:RegisterEvent("VARIABLES_LOADED")

	ConglomoMod_WoW_ChatFrame_OnEvent = ChatFrame_OnEvent
	ChatFrame_OnEvent = function () ConglomoMod:ChatFrame_OnEvent() end

	WorldFrame:SetPoint("TOPLEFT", UIParent, "TOPLEFT", 0, -53)
	WorldFrame:SetPoint("BOTTOMRIGHT", UIParent, "BOTTOMLEFT", 680, 0)

	GameTooltip_SetDefaultAnchor = function (tooltip, parent)
		tooltip:SetOwner(parent, "ANCHOR_NONE")
		tooltip:SetPoint("BOTTOMRIGHT", "WorldFrame", "BOTTOMRIGHT", -13, 64)
	end

end


function ConglomoMod:OnEvent()
	if (event == "VARIABLES_LOADED") then
		this:RegisterEvent("TRAINER_SHOW")
		this:RegisterEvent("UI_ERROR_MESSAGE")
		this:RegisterEvent("PARTY_INVITE_REQUEST")

		this:UnregisterEvent("VARIABLES_LOADED")

		SlashCmdList["PANDA"] = function () ConglomoMod:Panda() end
		SLASH_PANDA1 = "/panda"

		if (UnitClass("player") == "Hunter") then amhunter = true end
		if(UnitClass("player") == "Hunter") then LoadAddOn("GFW_FeedOMatic") end
		if(UnitClass("player") == "Druid") then LoadAddOn("FeralFighter") end

		ConglomoMod_BagsHide(true)
		ConglomoMod:SizeFrames()
		ConglomoMod:SetConstants()

  elseif (event == "TRAINER_SHOW") then SetTrainerServiceTypeFilter("unavailable",0);

	elseif (event == "UI_ERROR_MESSAGE") then
		if (err == "Your pet is dead.") then ConglomoMod.petisdead = true end

	elseif (event == "PARTY_INVITE_REQUEST") then
		if ConglomoMod:IsFriend(arg1) then
			AcceptGroup();
			for i=1, STATICPOPUP_NUMDIALOGS, 1 do
				local frame = getglobal("StaticPopup"..i);
				if (frame:IsVisible() and (frame.which == "PARTY_INVITE")) then frame:Hide() end
			end
		else SendWho("n-\"".. arg1.. "\"") end
	end
end


function ConglomoMod:IsFriend(name)
	for i=1,GetNumFriends() do if GetFriendInfo(i) == name then return true end end
	if (IsInGuild()) then for i=1, GetNumGuildMembers() do if (GetGuildRosterInfo(i) == name) then return true end end end
end


function ConglomoMod:OpenChatType(ctype)
  if (not chatFrame) then
    chatFrame = DEFAULT_CHAT_FRAME;
  end

  chatFrame.editBox.chatType = ctype;
  ChatEdit_UpdateHeader(chatFrame.editBox)
  chatFrame.editBox:Show()
  chatFrame.editBox.setText = 1
  chatFrame.editBox.text = ""
end


function ConglomoMod:ChatFrame_OnEvent()
	if(arg1 and event == "CHAT_MSG_TEXT_EMOTE") then
		if (string.find(arg1, "spit")) then
			return false;
		end
	end
end


function ConglomoMod:Panda()
	if ConglomoMod.afk then
		if (GetNumPartyMembers() > 0) then
			SetCVar("autoClearAFK", aclearafk)
			SendChatMessage("I have returned, rejoyce!", "PARTY")
		else SitOrStand() end
		SendChatMessage("", "AFK");
		ConglomoMod.afk = nil;
	else
		if (GetNumPartyMembers() > 0) then
			aclearafk = GetCVar("autoClearAFK")
			SetCVar("autoClearAFK", 0);
			FollowUnit("party1");
			SendChatMessage("I must heed the call of the panda!  I will return shortly.", "PARTY");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Going AFK")
			SitOrStand()
		end
		ConglomoMod.afk = true
		SendChatMessage("I am a proud user of Panda Express!", "AFK")
	end
end


function ConglomoMod:BagsShow()
	for i=0,3 do
		local bag = getglobal("CharacterBag".. i.. "Slot")
		bag:Show();
	end
end


function ConglomoMod:BagsHide(doit)
	if (doit) then
		for i=0,3 do
			local bag = getglobal("CharacterBag".. i.. "Slot")
			bag:Hide()
		end
	else Timex:AddNamedSchedule("TekBagHide", 2, nil, nil, ConglomoMod:BagsHide, true) end
end


function ConglomoMod:HawkMark()
	local hashawk
	local i =  1;
	while (UnitBuff("player",i)) do
		if(string.find(UnitBuff("player",i),"Raven")) then
			hashawk = 1
		end
  	i = i + 1
  end
  if (hashawk) then
		if (UnitExists("target") and UnitCanAttack("player", "target") and not UnitIsCivilian("target")) then
			CastSpellByName("Hunter's Mark") end
  else
  	CastSpellByName("Aspect of the Hawk") end
end


function ConglomoMod:MonkRaptorClip()
	local hasmonk, isclipped
	local i =  1

--	while (UnitBuff("player",i)) do
--		if(string.find(UnitBuff("player",i),"Monkey")) then hasmonk = true; end
--  	i = i + 1;
--  end
--
  i = 1
  while (UnitDebuff("target", i)) do
    debuff = UnitDebuff("target", i)
    if (string.find(debuff, "Ability_Rogue_Trip")) then isclipped = true; end
    i = i + 1
  end

--	if (hasmonk) then
		CastSpellByName("Raptor Strike");
		if (not isclipped) then CastSpellByName("Wing Clip") end
--	else CastSpellByName("Aspect of the Monkey") end
end


function ConglomoMod:Moonfire()
	if UnitName("target") and string.find(UnitName("target")," Totem") then CastSpellByName("Moonfire(Rank 1)") else Immunization:Cast("Moonfire") end
end


function ConglomoMod:CallPet()
	if (ConglomoMod.petisdead or UnitIsDead("pet")) then CastSpellByName("Revive Pet"); ConglomoMod.petisdead = nil;
	elseif (UnitExists("pet")) then CastSpellByName("Dismiss Pet")
	else CastSpellByName("Call Pet"); end
end


function ConglomoMod:HunterSting()
	if ( (UnitPowerType("target") == 0) and (UnitMana("target") < 30) ) then CastSpellByName("Viper Sting");
	else CastSpellByName("Scorpid Sting"); end
end


function ConglomoMod:RotateEnch()
	if (bb_weap == "l") then
		bb_weap = "f";
		BuffBotOpts('f*');
	elseif(bb_weap == "f") then
		bb_weap = "w";
		BuffBotOpts('w*');
	elseif(bb_weap == "w") then
		bb_weap = nil;
		BuffBotOpts('r*');
	else
		bb_weap = "l";
		BuffBotOpts("l*");
	end
end


function ConglomoMod:Seal(seal)
	local hasseal = ConglomoMod:HasASeal();
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


function ConglomoMod:HasASeal()
	local i = 1;
	while (UnitBuff("player",i)) do
		if(string.find(UnitBuff("player",i),"SealOfFury")) then return true; end
		if(string.find(UnitBuff("player",i),"ThunderBolt")) then return true; end
		if(string.find(UnitBuff("player",i),"Holy_HolySmite")) then return true; end
  	i = i + 1;
  end
end


function ConglomoMod:FixAR(framename)
	local fr = getglobal(framename);
	if (fr) then fr:SetWidth(math.floor(fr:GetWidth()*85/128)) end
end


function ConglomoMod:BindtoWorld(framename)
	local fr = getglobal(framename);
	if (not fr) then return end
	fr:ClearAllPoints();
	fr:SetPoint("TOPLEFT", WorldFrame, "TOPLEFT");
	fr:SetPoint("BOTTOMRIGHT", WorldFrame, "BOTTOMRIGHT");
end


function ConglomoMod:BigButton()
	local w=24
	local h=36
	if (ActionButton1:GetWidth() ~= w) then
		ActionButton1:SetWidth(w);
		ActionButton1:SetHeight(h);
	else
		ActionButton1:SetWidth(w*2);
		ActionButton1:SetHeight(h*2);
	end
end


function ConglomoMod:OnUpdate()
	if (amhunter and not inpopmenu) then
		if (UnitExists("target") and UnitCanAttack("player", "target") and (not UnitIsDead("target")) and (IsActionInRange(rangebutton) == 1)) then
			if (CURRENT_ACTIONBAR_PAGE ~= rangebar) then CURRENT_ACTIONBAR_PAGE = rangebar; ChangeActionBarPage(); end
		elseif (CURRENT_ACTIONBAR_PAGE ~= meleebar) then CURRENT_ACTIONBAR_PAGE = meleebar; ChangeActionBarPage(); end
	end
end


function ConglomoMod:Popbar(reset)
	local f = function () ConglomoMod:Popbar(true) end
	if (not reset) then Timex:AddNamedSchedule("TekPopbar", 2, nil, nil, f) end

	if (inpopmenu or reset) then
		inpopmenu = false;
		CURRENT_ACTIONBAR_PAGE = meleebar;
		ChangeActionBarPage();
	else
		inpopmenu = true ;
		CURRENT_ACTIONBAR_PAGE = popbar;
		ChangeActionBarPage();
	end
end


function ConglomoMod:ResetCast(spell)
	inpopmenu = false;
	CURRENT_ACTIONBAR_PAGE = meleebar;
	ChangeActionBarPage();
	CastSpellByName(spell);
end


function ConglomoMod:Chatsize()
	--  ╔═══════╦═══════╦═══════╗
	--  ║   6   ║   2   ║   4   ║
	--  ╠═══════╩═══╦═══╩═══════╣
	--  ║     3     ║     1     ║
	--  ╚═══════════╩═══════════╝

	local wtop = 223;
	local htop = 97;
	local wbtm = 340;
	local hbtm = 30;

	ChatFrame2:ClearAllPoints(); ChatFrame6:ClearAllPoints();
	ChatFrame2:SetPoint("BOTTOMRIGHT", ChatFrame4, "BOTTOMLEFT", -3, 0);
	ChatFrame6:SetPoint("BOTTOMRIGHT", ChatFrame2, "BOTTOMLEFT", -3, 0);
	ChatFrame2:SetWidth(wtop); ChatFrame4:SetWidth(wtop); ChatFrame6:SetWidth(wtop);
	ChatFrame2:SetHeight(htop); ChatFrame4:SetHeight(htop); ChatFrame6:SetHeight(htop);
end


function ConglomoMod:HideBar(hide)
	local hidetxt = "FALSE";
	if hide then hidetxt = "TRUE"; end

	for i=1,12 do
		Visor:Do("f=ActionButton"..i.." h=".. hidetxt) ;
	end
end


function ConglomoMod:HideButton120()
	Visor:Do("f=VisorActionButton120 h=TRUE");
end


function ConglomoMod:SetVZ()
	UIParentLoadAddOn("Blizzard_AuctionUI");
	UIParentLoadAddOn("Blizzard_BattlefieldMinimap");

	ConglomoMod:MakeVZTable();

	for i,val in ConglomoMod.vzhidetable do
		Visor:SetupFrame("f="..val.." h=TRUE");
	end

	for i,val in ConglomoMod.vzopttable do
		Visor:SetupFrame("f="..val.." pr=UIParent p1=center p2=center x=340 y=0");
	end

	for i,val in ConglomoMod.vztable do
		Visor:SetupFrame(val);
	end

	ConglomoMod.vztable = nil;
end


function ConglomoMod:MakeVZTable()
	ConglomoMod.vzopttable = {
		"eCastingBarConfigFrame",
		"OptionsFrame",
		"SoundOptionsFrame",
		"WorldStateScoreFrame",
		"GameMenuFrame",
		"RangeColorOptionsFrame",
		"QuestAssistOptionsFrame",
		"UIOptionsFrame",
	};

	ConglomoMod.vzhidetable = {
		"MinimapBorderTop",
		"MinimapZoneTextButton",
		"MinimapToggleButton",
		"MinimapZoomIn",
		"MinimapZoomOut",
		"MiniMapMailIcon",
		"GameTimeFrame",

		"BattlefieldMinimapCorner",
		"BattlefieldMinimapCloseButton",

		"MainMenuBar",
		"DurabilityFrame",
		"BonusActionBarTexture0",
		"BonusActionBarTexture1",
		"ActionBarUpButton",
		"ActionBarDownButton",
	};

	ConglomoMod.vztable = {
		"f=NLHeader a=.3",
		"f=TitanPanelBarButtonHider st=BACKGROUND",
--		"f=TitanPanelBarButton st=LOW wh=680",

		"f=VisorActionButton120 ssh=OnClick ss=ConglomoMod:HideButton120()",

--		"f=WorldFrame s=1 ht=715 wh=680 pr=UIParent p1=BOTTOMLEFT p2=BOTTOMLEFT x=0 y=0",
		"f=MinimapCluster pr=UIParent p1=CENTER p2=BOTTOMLEFT x=745 y=689",
		"f=AuctionFrame s=.8 pr=WorldFrame p1=topleft p2=topleft x=0 y=0",

		"f=ZoneTextFrame pr=WorldFrame p1=bottom p2=bottom x=0 y=512",
		"f=GroupLootFrame1 pr=WorldFrame p1=bottomright p2=bottomright x=0 y=0",

		"f=StaticPopup1 pr=UIParent p1=center p2=center x=340 y=200",
		"f=SystemMessageControlToolFrame pr=UIParent p1=LEFT p2=LEFT",
		"f=UIErrorsFrame pr=WorldFrame p1=top p2=top x=0 y=-122",

		"f=BonusActionBarFrame p=UIParent",
		"f=MultiBarRight pr=UIParent p1=topright p2=topright x=-6 y=-6",
		"f=MultiBarLeft pr=MultiBarRight p1=topright p2=topleft x=6 y=0",
		"f=MainMenuBarBackpackButton p=UIParent wh=24 h=FALSE pr=MultiBarLeftButton1 p1=topright p2=topleft x=-6 y=0",
		"f=MainMenuBarBackpackButton p=UIParent ssh=OnEnter ss=ConglomoMod_BagsShow()",
		"f=MainMenuBarBackpackButton p=UIParent ssh=OnLeave ss=ConglomoMod_BagsHide()",
		"f=QuestWatchFrame pr=MainMenuBarBackpackButton p1=topright p2=bottomright x=0 y=-5",
		"f=QuestTimerFrame pr=QuestWatchFrame p1=topright p2=bottomright x=0 y=-30",

		"f=BonusActionButton1 ssh=OnShow ss=ConglomoMod:HideBar(true)",
		"f=BonusActionButton1 ssh=OnHide ss=ConglomoMod:HideBar()",

		"f=PetActionButton1 p=UIParent pr=WorldFrame p1=topright p2=topright wh=20 x=-5 y=-5",
		"f=PetActionButton8 p=UIParent pr=PetActionButton3 p1=topleft p2=bottomleft  wh=20 x=0 y=-15",

		"f=TemporaryEnchantFrame pr=PetActionButton1 p1=topright p2=topleft x=-15 y=0",
		"f=TempEnchant1 wh=21",
		"f=TempEnchant2 wh=21",

		"f=ActionButton1 p=UIParent s=1 h=FALSE ht=36 wh=24 pr=UIParent p1=BOTTOMRIGHT p2=BOTTOMLEFT x=295 y=130",
		"f=ActionButton2 p=UIParent h=FALSE wh=24 pr=ActionButton6 p1=BOTTOMLEFT p2=TOPLEFT x=0 y=6",
		"f=ActionButton3 p=UIParent h=FALSE wh=24 pr=ActionButton8 p1=BOTTOMLEFT p2=TOPLEFT x=0 y=6",
		"f=ActionButton4 p=UIParent h=FALSE wh=24 pr=ActionButton1 p1=TOPRIGHT p2=BOTTOMRIGHT x=0 y=-6",
		"f=ActionButton9 p=UIParent h=FALSE wh=24 pr=ActionButton4 p1=TOPRIGHT p2=BOTTOMRIGHT x=0 y=-6",

		"f=CooldownHud_Button1 pr=WorldFrame p1=center p2=center x=0 y=150 a=10 wh=24",
		"f=CooldownHud_Button2 pr=CooldownHud_Button1 p1=topleft p2=topright a=10 wh=24",
		"f=CooldownHud_Button3 pr=CooldownHud_Button1 p2=topleft p1=topright a=10 wh=24",
		"f=CooldownHud_Button4 pr=CooldownHud_Button2 p1=topleft p2=topright a=10 wh=24",
		"f=CooldownHud_Button5 pr=CooldownHud_Button3 p2=topleft p1=topright a=10 wh=24",
		"f=CooldownHud_Button6 pr=CooldownHud_Button4 p1=topleft p2=topright a=10 wh=24",
		"f=CooldownHud_Button7 pr=CooldownHud_Button5 p2=topleft p1=topright a=10 wh=24",
		"f=CooldownHud_Button8 pr=CooldownHud_Button6 p1=topleft p2=topright a=10 wh=24",
		"f=CooldownHud_Button9 pr=CooldownHud_Button7 p2=topleft p1=topright a=10 wh=24",
		"f=CooldownHud_Button10 pr=CooldownHud_Button8 p1=topleft p2=topright a=10 wh=24",
		"f=CooldownHud_Button11 pr=CooldownHud_Button9 p2=topleft p1=topright a=10 wh=24",
		"f=CooldownHud_Button12 pr=CooldownHud_Button10 p1=topleft p2=topright a=10 wh=24",

		"f=WatchDogFrame_party1 pr=WatchDogFrame_player p1=topleft p2=bottomleft x=0 y=0",
		"f=WatchDogFrame_party2 pr=WatchDogFrame_party1 p1=topleft p2=bottomleft x=0 y=0",
		"f=WatchDogFrame_party3 pr=WatchDogFrame_party2 p1=topleft p2=bottomleft x=0 y=0",
		"f=WatchDogFrame_party4 pr=WatchDogFrame_party3 p1=topleft p2=bottomleft x=0 y=0",
		"f=WatchDogFrame_pet pr=WatchDogFrame_player p1=topleft p2=topright x=0 y=0",
		"f=WatchDogFrame_partypet1 pr=WatchDogFrame_party1 p1=topleft p2=topright x=0 y=0",
		"f=WatchDogFrame_partypet2 pr=WatchDogFrame_party2 p1=topleft p2=topright x=0 y=0",
		"f=WatchDogFrame_partypet3 pr=WatchDogFrame_party3 p1=topleft p2=topright x=0 y=0",
		"f=WatchDogFrame_partypet4 pr=WatchDogFrame_party4 p1=topleft p2=topright x=0 y=0",
	};

	for i=0,3 do table.insert(ConglomoMod.vztable, "f=CharacterBag".. i.. "Slot p=UIParent wh=24") end
	for x,i in {5,6,7,8,10,11,12} do table.insert(ConglomoMod.vztable, "f=ActionButton"..i.." p=UIParent h=FALSE wh=24") end
	for x,i in {2,3,9,10} do table.insert(ConglomoMod.vztable, "f=PetActionButton"..i.." p=UIParent pr=PetActionButton"..(i-1).." p1=topleft p2=bottomleft wh=20 x=0 y=-5") end
	for i=0,23 do table.insert(ConglomoMod.vztable, "f=BuffButton".. i.. " wh=19") end

--	for i=1,10 do
--		table.insert(ConglomoMod.vztable, "f=PetActionButton".. i.. "AutoCastable wh=38");			--38.5
--		table.insert(ConglomoMod.vztable, "f=PetActionButton".. i.. "NormalTexture2 wh=36"); 	--35.8
--	end

	for i=1,12 do
		table.insert(ConglomoMod.vzhidetable, "ActionButton".. i.. "HotKey");
		table.insert(ConglomoMod.vzhidetable, "BonusActionButton".. i.. "HotKey");

		table.insert(ConglomoMod.vztable, "f=ActionButton".. i.. " p=UIParent");
		table.insert(ConglomoMod.vztable, "f=MultiBarLeftButton".. i.. " wh=24 st=MEDIUM");
		table.insert(ConglomoMod.vztable, "f=MultiBarRightButton".. i.. " wh=24 st=MEDIUM");
		table.insert(ConglomoMod.vztable, "f=BonusActionButton"..i.." pr=ActionButton".. i.. " p1=bottomright p2=bottomright x=0 y=0 wh=24");

	  table.insert(ConglomoMod.vztable, "f=ActionButton"..i.."NormalTexture wh=43");					--43.8
		table.insert(ConglomoMod.vztable, "f=BonusActionButton"..i.."NormalTexture wh=43");
		table.insert(ConglomoMod.vztable, "f=MultiBarRightButton"..i.."NormalTexture wh=43");
		table.insert(ConglomoMod.vztable, "f=MultiBarLeftButton"..i.."NormalTexture wh=43");

--		table.insert(ConglomoMod.vztable, "f=ActionButton"..i.."Border wh=41");								--41.1
--		table.insert(ConglomoMod.vztable, "f=BonusActionButton"..i.."Border wh=41");
--		table.insert(ConglomoMod.vztable, "f=MultiBarRightButton"..i.."Border wh=41");
--		table.insert(ConglomoMod.vztable, "f=MultiBarLeftButton"..i.."Border wh=41");
	end

	for i=1,16 do
		table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_player_Buff".. i);
		table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_player_Debuff".. i);
	end

	for x,i in {"party", "partypet"} do
		for j=1,4 do
			for k=1,16 do
				table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_"..i..j.."_Buff".. k);
				table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_"..i..j.."_Debuff".. k);
			end
		end
	end
end


function ConglomoMod:SizeFrames()
	ConglomoMod:BindtoWorld("AutoFollowStatus");
	ConglomoMod:BindtoWorld("EFM_TimerFrame");
	ConglomoMod:BindtoWorld("WorldMapFrame");
	WorldMapFrame:SetScale(0.66);

	ConglomoMod:FixAR("MainMenuBarBackpackButtonNormalTexture");

	for i=0,3 do
		ConglomoMod:FixAR("CharacterBag".. i.. "SlotNormalTexture");
	end

	for i=1,10 do
		ConglomoMod:FixAR("PetActionButton".. i.. "AutoCastable");
		ConglomoMod:FixAR("PetActionButton".. i.. "NormalTexture2");
	end

	for i=1,12 do
		ConglomoMod:FixAR("ActionButton"..i.."Border");
		ConglomoMod:FixAR("BonusActionButton"..i.."Border");
		ConglomoMod:FixAR("MultiBarRightButton"..i.."Border");
		ConglomoMod:FixAR("MultiBarLeftButton"..i.."Border");
	end

--------------------------------------------
	local w = 57
	for i=0,8 do
		local tp = getglobal("TitanPanelBackground".. i);
		tp:SetWidth(w);
	end

	for i=9,11 do
		local tp = getglobal("TitanPanelBackground".. i);
		tp:SetWidth(w-1);
	end

  local w = 62
	for i=12,21 do
	  local tp = getglobal("TitanPanelBackground".. i);
	  tp:SetWidth(w);
  end

  for i=22,22 do
	  local tp = getglobal("TitanPanelBackground".. i);
	  tp:SetWidth(w-1);
  end
end


function ConglomoMod:SetConstants()
	BINDING_HEADER_CHATTYPEBINDING = "Chat Type Key Bindings";
	BINDING_NAME_CHATTYPEBINDING_SAY = "Say";
	BINDING_NAME_CHATTYPEBINDING_PARTY = "Party";
	BINDING_NAME_CHATTYPEBINDING_GUILD = "Guild";
	BINDING_NAME_CHATTYPEBINDING_RAID = "Raid";
	BINDING_NAME_CHATTYPEBINDING_OFFICER = "Officer";

	CHAT_FLAG_AFK = "[AFK] ";
	CHAT_FLAG_DND = "[DND] ";
	CHAT_FLAG_GM = "[GM] ";
	CHAT_GUILD_GET = "%s:\32"; -- Guild message from player %s
	CHAT_RAID_GET = "%s:\32"; -- Raid message from player %s
	CHAT_PARTY_GET = "%s:\32"; -- Party message from player %s
	CHAT_WHISPER_GET = "%s:\32"; -- Whisper from player %s
	CHAT_WHISPER_INFORM_GET = "To %s:\32"; -- A whisper already sent to player %s

	LOOT_ROLL_ALL_PASSED = "Everyone |cff808080passed|r on: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_PASSED = "%s |cff808080passed|r on: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_PASSED_SELF = "You |cff808080passed|r on: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_GREED = "%s has selected |cffFFFF00Greed|r for: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_GREED_SELF = "You have selected |cffFFFF00Greed|r for: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_ROLLED_GREED = "|cffFFFF00Greed Roll|r - %d for %s|Hitem:%d:%d:%d:%d|h[%s]|h%s by %s";
	LOOT_ROLL_ROLLED_GREED_SELF = "|cffFFFF00You roll a %d (Greed) on:|r %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_NEED = "%s has selected |cffFF0000Need|r for: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_NEED_SELF = "You have selected |cffFF0000Need|r for: %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_ROLLED_NEED = "|cffFF0000Need Roll|r - %d for %s|Hitem:%d:%d:%d:%d|h[%s]|h%s by %s";
	LOOT_ROLL_ROLLED_NEED_SELF = "|cffFF0000You roll a %d (Need) on:|r %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_WON = "|cffffff80%s won:|r %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";
	LOOT_ROLL_YOU_WON = "|cffffff80You won:|r %s|Hitem:%d:%d:%d:%d|h[%s]|h%s";

	ChatTypeInfo["OFFICER"].sticky = 1;
	ChatTypeInfo["YELL"].sticky = 1;
	ChatTypeInfo["CHANNEL"].sticky = 1;
end


