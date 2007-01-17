
LUASLINGER_SCRIPTS = {
	[1] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "TekIDDB = nil\n\nlocal finddrops = false\nlocal remdrops = true\nlocal setvisor = false\n\nif finddrops then\nlocal s = PeriodicTable:FindWorldDrops() or \"\"\nChatFrame5:AddMessage(s)\nTekIDDB = s\nend\n\nif remdrops then TekIDDB = PeriodicTable:RemoveAllWorldDrops() end\nif setvisor then Bearchat:SetVZ() end\n",
		},
	},
	[2] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "\n\nlocal events = {\n\"QUEST_WATCH_UPDATE\",\n\"UNIT_MANA\",\n}\n\nlocal a = AceLibrary(\"AceAddon-2.0\"):new(\"AceEvent-2.0\")\n\n\nlocal printout = function(a1,a2,a3,a4,a5,a6,a7,a8,a9)\nChatFrame5:AddMessage(\"||cffff8888\"..event..\n        (a1 and (\"||cffff88ff || arg 1: \"..a1) or \"\")..\n        (a2 and (\"||cff88ffff || arg 2: \"..a2) or \"\")..\n        (a3 and (\"||cffffff88 || arg 3: \"..a3) or \"\")..\n        (a4 and (\"||cffff88ff || arg 4: \"..a4) or \"\")..\n        (a5 and (\"||cff88ffff || arg 5: \"..a5) or \"\")..\n        (a6 and (\"||cffffff88 || arg 6: \"..a6) or \"\")..\n        (a7 and (\"||cffff88ff || arg 7: \"..a7) or \"\")..\n        (a8 and (\"||cff88ffff || arg 8: \"..a8) or \"\")..\n        (a9 and (\"||cffffff88 || arg 9: \"..a9) or \"\"))\nend\n\nfor _,e in ipairs(events) do a:RegisterEvent(e, printout) end\n",
		},
	},
	[3] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "local _, _, b = string.find(a, \"(item:%d+:%d+:%d+:%d+)\")\nif b then ChatFrame5:AddMessage(a.. \" \"..b) end",
		},
	},
	[4] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "local a = -1\n\nlocal t,tx,r,g,b,x,y;\n\nif (a==1) then tx,t,r,g,b,x,y=\"Oven\",60*2,1,0,0,0,0;\nelseif (a==2) then tx,t,r,g,b,x,y=\"Nuggets\", 60*30, 1,0,0,0,-20;\nelseif (a==3) then tx,t,r,g,b,x,y=\"Dishes\", 60*10,0,0,1,0,-40;\nelseif (a==4) then tx,t,r,g,b,x,y=\"Washer\", 60*35, 0.5,0.5,1,0,-60;\nelseif (a==5) then tx,t,r,g,b,x,y=\"Dryer\", 60*60, 1,0.5,0.5,0,-80;\nelseif (a==-1) then tx,t,r,g,b,x,y=\"Test\", 5, 0,1,0,0,-100;\nend\n\nlocal fu = function() \nVisor:Do(\"f=VisorActionButton120 s=3.0 pr=UIParent p1=CENTER p2=CENTER x=340 y=0 h=FALSE\");\nVisor:Do(\"f=VisorActionButton120Text txt=\\\"\"..tx..\" \\\" h=FALSE\");\nend\n\nif t then\nTimex:AddNamedSchedule(\"Tek\"..tx, t, nil, nil, fu)\nTimexBar:StartBar(tx, t, r,g,b,x,y,\"WorldFrame\",\"TOPLEFT\",\"TOPLEFT\")\nend\n",
		},
	},
	[5] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "Visor:SetupFrame(\"f=VisorActionButton1 ssh=OnClick ss=RangeMelee_Popbar()\")",
		},
	},
	[6] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = " for v=12813,12813 do\nlocal a = \"item:\"..v..\":0:0:0\"\nGameTooltip:SetHyperlink(a)\nend\n",
		},
	},
	[7] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "local i,t,x = 1,GetActionTexture(1)\nrepeat\nx = GetMacroIconInfo(i)\ni = i+1;\nuntil (not x or x == t)\nif x then ChatFrame3:AddMessage(i.. \" \"..t) end\n",
		},
	},
	[8] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "local m, nm, kc, d = 0,0,0,0\nlocal dupes = {}\n\nfor l,p in KC_ItemsDB do\nif (type(l) == \"string\" and type(p) == \"string\") then\nlocal s2;\n--local l = \"15263:0:415:0\"\n--local p = KC_ItemsDB[l]\nlocal _, _, id = string.find(l, \"(%d+):%d+:%d+:%d+\")\nlocal _, _, s, b = string.find(p, \"(%d+):(%d+)\")\n\nif (id and s and not dupes[id]) then\n\nif (TitanItemDed_itemsbyid[tonumber(id)]) then \ns2 = TitanItemDed_itemsbyid[tonumber(id)].s \ndupes[id] = true;\nd = d+1;\nend\n\nif (not s2) then kc = kc+1;\nelseif (tonumber(s) == s2) then m = m+1;\nelse nm = nm+1 end\n\nend\nend\nend\n\nlocal tido = 0;\n\nfor i,v in TitanItemDed_itemsbyid do\ntido = tido + 1;\nend\n\ntido = tido - m - nm;\n\nChatFrame3:AddMessage(\"Match: \"..m..\" || Mismatch: \"..nm..\" || KC Only: \"..kc..\" || TID Only: \"..tido..\" || Dupes: \"..d)`",
		},
	},
	[9] = {
		["eventName"] = "",
		["infiniteText"] = {
			[1] = "--local a = 11138\nif (type(a) == \"string\") then _, _, a = string.find(a, \"item:(%d+):%d+:%d+:%d+\") end\nlocal b = {GetItemInfo(a)}\nlocal c = \"|| \"\n\nfor i,v in b do c = c..v..\" || \" end\nChatFrame3:AddMessage(c)\n\n--  itemName, itemLink, itemRarity, itemMinLevel, itemType, itemSubType, itemStackCount, itemEquipLoc",
		},
	},
	[10] = {
		["eventName"] = "",
		["infiniteText"] = {
		},
	},
}
LUASLINGER_LIBRARY = {
}
LUASLINGER_SCRATCH = {
	[1] = "\n\n\nfor i=1,GetNumFactions() do \nif GetFactionInfo(i) == \"Inactive\" then\nCollapseFactionHeader(i)\nend\nend\n\n",
}
LUASLINGER_DATA_FORMAT_VERSION = 2
