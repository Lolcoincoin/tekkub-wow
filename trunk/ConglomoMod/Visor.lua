
if not ConglomoMod then ConglomoMod = {} end


function ConglomoMod:BigButton()
end


function ConglomoMod:Chatsize()
	--  ╔═══════╦═══════╦═══════╗
	--  ║   6   ║   2   ║   4   ║
	--  ╠═══════╩═══╦═══╩═══════╣
	--  ║     3     ║     1     ║
	--  ╚═══════════╩═══════════╝

	local width, height = 1024, 100
	local hgap, vgap = 3, 10
	local wtop, wbtm = (width-hgap*4)/3, (width-hgap*3)/2

	ChatFrame1:SetWidth(wbtm)

	ChatFrame3:ClearAllPoints()
	ChatFrame3:SetPoint("TOPRIGHT", ChatFrame1, "TOPLEFT", -hgap, 0)
	ChatFrame3:SetWidth(wbtm)
	ChatFrame3:SetHeight(height+20)

	ChatFrame4:ClearAllPoints()
	ChatFrame4:SetPoint("BOTTOMRIGHT", ChatFrame1, "TOPRIGHT", 0, vgap)
	ChatFrame4:SetHeight(height)
	ChatFrame4:SetWidth(wtop)

	ChatFrame2:ClearAllPoints()
	ChatFrame2:SetPoint("BOTTOMRIGHT", ChatFrame4, "BOTTOMLEFT", -hgap, 0)
	ChatFrame2:SetWidth(wtop)
	ChatFrame2:SetHeight(height)

	ChatFrame6:ClearAllPoints()
	ChatFrame6:SetPoint("BOTTOMRIGHT", ChatFrame2, "BOTTOMLEFT", -hgap, 0)
	ChatFrame6:SetWidth(wtop)
	ChatFrame6:SetHeight(height)
end


function ConglomoMod:HideBar(hide)
end


function ConglomoMod:HideButton120()
end


function ConglomoMod:SetTitan()
end


function ConglomoMod:SetVisor()
	UIParentLoadAddOn("Blizzard_AuctionUI")
	UIParentLoadAddOn("Blizzard_BattlefieldMinimap")
	UIParentLoadAddOn("GFW_AutoCraft")

	ConglomoMod:MakeVZTable()

	for i,val in ConglomoMod.vzhidetable do
		Visor:SetupFrame("f="..val.." h=TRUE")
	end

	for i,val in ConglomoMod.vzopttable do
		Visor:SetupFrame("f="..val.." pr=UIParent p1=center p2=center x=512 y=0")
	end

	for i,val in ConglomoMod.vztable do
		Visor:SetupFrame(val)
	end

	ConglomoMod.vztable = nil
end


function ConglomoMod:SetFuBar()
	FuBarFrame1:SetPoint("TOPLEFT", UIParent, "TOPLEFT")
	FuBarFrame1:SetWidth(1024)

	FuBarFrame2:SetPoint("LEFT", FuBarFrame1, "RIGHT")
	FuBarFrame2:SetWidth(1024)

	FuBarFrame3:SetPoint("TOP", FuBarFrame1, "BOTTOM")
	FuBarFrame3:SetWidth(1024)
end


function ConglomoMod:MakeVZTable()
	ConglomoMod.vzopttable = {
--~ 		"LoadITmenuFrame",
--~ 		"eCastingBarConfigFrame",
		"OptionsFrame",
		"SoundOptionsFrame",
		"WorldStateScoreFrame",
		"GameMenuFrame",
		"RangeColorOptionsFrame",
--~ 		"QuestAssistOptionsFrame",
--~~ 		"UIOptionsFrame",
--~ 		"WatchDogOptions_ClickCastings",
--~ 		"WatchDogOptions",
--~ 		"NLConfigFrame",
--~ 		"NLConfigSpellsFrame",
	}

	ConglomoMod.vzhidetable = {
		"MinimapBorderTop",
		"MinimapZoneTextButton",
		"MinimapToggleButton",
		"MinimapZoomIn",
		"MinimapZoomOut",
		"MiniMapMailIcon",
		"GameTimeFrame",
		"PetActionButton1",

		"BattlefieldMinimapCorner",
		"BattlefieldMinimapCloseButton",

		"MainMenuBar",
		"DurabilityFrame",
		"BonusActionBarTexture0",
		"BonusActionBarTexture1",
		"ActionBarUpButton",
		"ActionBarDownButton",
--~ 		"eCastingBar_Outline",
--~ 		"eCastingBarMirror_Outline",
--~ 		"eCastingBar",
	}

	ConglomoMod.vztable = {
--		"f=FuBarFrame1 pr=UIParent p1=TOPLEFT p2=TOPLEFT wh=1024",
--		"f=FuBarFrame2 pr=FuBarFrame1 p1=LEFT p2=RIGHT wh=1024",
--		"f=FuBarFrame3 pr=FuBarFrame1 p1=TOP p2=BOTTOM wh=1024",

--~ 		"f=CT_RAMessageFrame pr=WorldFrame p1=center p2=center x=0 y=200",
--~ 		"f=CT_RA_WarningFrame pr=WorldFrame p1=center p2=center x=0 y=-50",

--~ 		"f=NLHeader a=.3 pr=WorldFrame p1=topleft p2=topleft x=0 y=-284",

--~ 		"f=VisorActionButton120 ssh=OnClick ss=ConglomoMod:HideButton120()",

		"f=MinimapCluster pr=WorldFrame p1=CENTER p2=TOPRIGHT x=68 y=-68",
		"f=AuctionFrame pr=WorldFrame p1=top p2=top x=0 y=0",
--~ 		"f=QueueIconsFrame pr=UIParent p1=bottomleft p2=bottom x=-375 y=50",
		"f=TicketStatusFrame pr=MinimapCluster p1=topleft p2=topright x=-16 y=-20",

		"f=ZoneTextFrame pr=WorldFrame p1=bottom p2=bottom x=0 y=612",
--		"f=GroupLootFrame1 pr=WorldFrame p1=bottomleft p2=bottomleft x=0 y=0",

		"f=UIOptionsFrame pr=UIParent p1=center p2=center x=-512 y=0",

		"f=StaticPopup1 pr=WorldFrame p1=center p2=center x=0 y=200",
		"f=SystemMessageControlToolFrame pr=UIParent p1=LEFT p2=LEFT",
		"f=UIErrorsFrame pr=WorldFrame p1=top p2=top x=0 y=-122",
--~ 		"f=eCastingBarMirror1 pr=WorldFrame p1=TOP p2=TOP x=0 y=-15",

--~ 		"f=NLConfigNeedsFrame pr=UIParent p1=center p2=center x=200 y=0",

		"f=SetWranglerFrame pr=WorldFrame p1=TOPLEFT p2=TOPLEFT y=0 x=265",

--~~ 		"f=BonusActionBarFrame p=UIParent",
--~~ 		"f=MultiBarRight pr=UIParent p1=topright p2=topright x=-7 y=-24",
--~~ 		"f=MultiBarLeft pr=MultiBarRight p1=topright p2=topleft x=-5 y=0",
--~~ 		"f=MainMenuBarBackpackButton p=UIParent h=FALSE pr=MultiBarLeftButton1 p1=topright p2=topleft x=-6 y=0",
--~~ 		"f=KeyRingButton p=UIParent",
		"f=QuestWatchFrame pr=MultiBarLeftButton1 p1=topright p2=topleft x=-6 y=0",
--~~ 		"f=QuestWatchFrame pr=MainMenuBarBackpackButton p1=topright p2=bottomright x=-20 y=-5",
		"f=QuestTimerFrame pr=QuestWatchFrame p1=topright p2=bottomright x=20 y=-30",

--~ 		"f=BonusActionButton1 ssh=OnShow ss=ConglomoMod:HideBar(true)",
--~ 		"f=BonusActionButton1 ssh=OnHide ss=ConglomoMod:HideBar()",

		"f=TemporaryEnchantFrame pr=WorldFrame p1=topright p2=topright x=-5 y=-5",

	--  ╔═══╗   ╔═══╗   ╔═══╗
	--  ║ 1 ║   ║ 2 ║   ║ 3 ║
	--  ╠═══╬═══╬═══╬═══╬═══╣
	--  ║ 4 ║ 5 ║ 6 ║ 7 ║ 8 ║
	--  ╠═══╬═══╬═══╬═══╬═══╝
	--  ║ 9 ║10 ║11 ║12 ║
	--  ╚═══╩═══╩═══╩═══╝

--~~ 		"f=ActionButton1 p=UIParent s=1 ht=36 h=FALSE pr=WorldFrame p1=BOTTOMRIGHT p2=BOTTOM x=-72 y=90",
--~~ 		"f=ActionButton2 p=UIParent h=FALSE pr=ActionButton1 p1=BOTTOMLEFT p2=BOTTOMRIGHT x=48 y=0",
--~~ 		"f=ActionButton3 p=UIParent h=FALSE pr=ActionButton2 p1=BOTTOMLEFT p2=BOTTOMRIGHT x=48 y=0",
--~~ 		"f=ActionButton4 p=UIParent h=FALSE pr=ActionButton1 p1=TOPRIGHT p2=BOTTOMRIGHT x=0 y=-6",
--~~ 		"f=ActionButton5 p=UIParent h=FALSE",
--~~ 		"f=ActionButton6 p=UIParent h=FALSE",
--~~ 		"f=ActionButton7 p=UIParent h=FALSE",
--~~ 		"f=ActionButton8 p=UIParent h=FALSE",
--~~ 		"f=ActionButton9 p=UIParent h=FALSE pr=ActionButton4 p1=TOPRIGHT p2=BOTTOMRIGHT x=0 y=-6",
--~~ 		"f=ActionButton10 p=UIParent h=FALSE",
--~~ 		"f=ActionButton11 p=UIParent h=FALSE",
--~~ 		"f=ActionButton12 p=UIParent h=FALSE",

	--  ╔═══╦═══╦═══╗
	--  ║ 8 ║ 2 ║ 3 ║
	--  ╠═══╬═══╬═══╣
	--  ║ 9 ║ 4 ║ 5 ║
	--  ╠═══╬═══╬═══╣
	--  ║10 ║ 6 ║ 7 ║
	--  ╚═══╩═══╩═══╝

		"f=PetActionButton2 p=UIParent pr=ActionButton1 p1=topleft p2=TOPLEFT x=-75 y=0",
		"f=PetActionButton3 p=UIParent pr=PetActionButton2 p1=topleft p2=topright x=5 y=0",
		"f=PetActionButton4 p=UIParent pr=PetActionButton2 p1=topleft p2=bottomleft x=0 y=-5",
		"f=PetActionButton5 p=UIParent pr=PetActionButton4 p1=topleft p2=topright x=5 y=0",
		"f=PetActionButton6 p=UIParent pr=PetActionButton4 p1=topleft p2=bottomleft x=0 y=-5",
		"f=PetActionButton7 p=UIParent pr=PetActionButton6 p1=topleft p2=topright x=5 y=0",

		"f=PetActionButton8 p=UIParent pr=PetActionButton2 p1=topright p2=topleft x=-5 y=0",
		"f=PetActionButton9 p=UIParent pr=PetActionButton8 p1=topleft p2=bottomleft x=0 y=-5",
		"f=PetActionButton10 p=UIParent pr=PetActionButton9 p1=topleft p2=bottomleft x=0 y=-5",

--~ 		"f=WatchDogFrame_target pr=MinimapCluster p1=topleft p2=bottomleft x=30 y=10",
--~ 		"f=WatchDogFrame_player pr=WatchDogFrame_target p1=topleft p2=bottomleft x=0 y=0",
--~ 		"f=WatchDogFrame_party1 pr=WatchDogFrame_player p1=topleft p2=bottomleft x=0 y=0",
--~ 		"f=WatchDogFrame_party2 pr=WatchDogFrame_party1 p1=topleft p2=bottomleft x=0 y=0",
--~ 		"f=WatchDogFrame_party3 pr=WatchDogFrame_party2 p1=topleft p2=bottomleft x=0 y=0",
--~ 		"f=WatchDogFrame_party4 pr=WatchDogFrame_party3 p1=topleft p2=bottomleft x=0 y=0",
--~ 		"f=WatchDogFrame_pet pr=WatchDogFrame_player p1=topleft p2=topright x=0 y=0",
--~ 		"f=WatchDogFrame_partypet1 pr=WatchDogFrame_party1 p1=topleft p2=topright x=0 y=0",
--~ 		"f=WatchDogFrame_partypet2 pr=WatchDogFrame_party2 p1=topleft p2=topright x=0 y=0",
--~ 		"f=WatchDogFrame_partypet3 pr=WatchDogFrame_party3 p1=topleft p2=topright x=0 y=0",
--~ 		"f=WatchDogFrame_partypet4 pr=WatchDogFrame_party4 p1=topleft p2=topright x=0 y=0",
	}

--~~ 	for i=1,12 do
--~~ 		table.insert(ConglomoMod.vzhidetable, "ActionButton".. i.. "HotKey");
--~~ 		table.insert(ConglomoMod.vzhidetable, "BonusActionButton".. i.. "HotKey");

--~~ 		table.insert(ConglomoMod.vztable, "f=ActionButton".. i.. " p=UIParent");
--~~ 		table.insert(ConglomoMod.vztable, "f=BonusActionButton"..i.." pr=ActionButton".. i.. " p1=bottomright p2=bottomright x=0 y=0");
--~~ 	end

--~ 	for i=1,16 do
--~ 		table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_player_Buff".. i);
--~ 		table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_player_Debuff".. i);
--~ 	end

--~ 	for x,i in {"party", "partypet"} do
--~ 		for j=1,4 do
--~ 			for k=1,16 do
--~ 				table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_"..i..j.."_Buff".. k);
--~ 				table.insert(ConglomoMod.vzhidetable, "WatchDogFrame_"..i..j.."_Debuff".. k);
--~ 			end
--~ 		end
--~ 	end
end


function ConglomoMod:SizeFrames()
end




