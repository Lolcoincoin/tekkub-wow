
local OptionHouse = LibStub("OptionHouse-1.1"))


local _, title = GetAddOnInfo("RatingTargets")
local author, version = GetAddOnMetadata("RatingTargets", "Author"), GetAddOnMetadata("RatingTargets", "Version")
local oh = OptionHouse:RegisterAddOn("Rating Targets", title, author, version)


local classtexts = {
	Hunter = [[<HTML><BODY>
		<H1> Hit Rating </H1><P>
		Base: 136<BR/>
		w/ Surefooted: 89
		</P></BODY></HTML>]],
	Mage = [[<HTML><BODY>
		<H1> Hit Rating </H1><P>
		Base: 202<BR/>
		w/ Elemental Precision (Fire/Frost): 164<BR/>
		w/ Arcane Focus (Arcane): 76
		</P></BODY></HTML>]],
	Warlock = [[<HTML><BODY>
		<H1> Hit Rating </H1><P>
		Base: 202<BR/>
		w/ Suppression (Affliction): 76<BR/><BR/>
		Note that a warlock might still want extra spell hit Rating for Shadowbolt, in which case Suppression becomes redundant.
		</P></BODY></HTML>]],
	Priest = [[<HTML><BODY>
		<H1> Hit Rating </H1><P>
		Base: 202<BR/>
		w/ Shadow Focus (Shadow): 76
		</P></BODY></HTML>]],
	Druid = [[<HTML><BODY>
		<H1> Spell Hit Rating </H1><P>
		Base: 202<BR/>
		w/ Balance of Power: 152<BR/><BR/>
		</P><H1> Spell Hit Rating </H1><P>
		Base: 136
		</P></BODY></HTML>]],
	Shaman = [[<HTML><BODY>
		<H1> Spell Hit Rating </H1><P>
		Base: 202<BR/>
		w/ Elemental Precision: 126<BR/>
		w/ Nature's Guidance: 164<BR/>
		w/ Elemental Precision + Nature's Guidance: 88<BR/><BR/>
		</P><H1> Melee Hit Rating (Dual-wield) </H1><P>
		Base: 403<BR/>
		w/ Dual Wield Specialization: 308<BR/>
		w/ Nature's Guidance: 356<BR/>
		w/ Dual Wield Specialization + Nature's Guidance: 261<BR/><BR/>
		</P><H1> Melee Hit Rating (2H/1H+Shield) </H1><P>
		Base: 136<BR/>
		w/ Nature's Guidance: 89
		</P></BODY></HTML>]],
	Rogue = [[<HTML><BODY>
		<H1> Hit Rating </H1><P>
		Base: 403<BR/>
		w/ Precision: 324<BR/>
		w/ Combat Expertise: 387<BR/>
		w/ Mace Specialization (Maces): 387<BR/>
		w/ Precision + Combat Expertise: 308<BR/>
		w/ Precision + Mace Specialization (Maces): 308
		</P></BODY></HTML>]],
	Paladin = [[<HTML><BODY>
		<H1> Melee Hit Rating </H1><P>
		Base: 136<BR/>
		w/ Precision: 89<BR/>
		w/ Weapon Expertise: 120<BR/>
		w/ Precision + Weapon Expertise: 73<BR/><BR/>
		</P><H1> Spell Hit Rating </H1><P>
		Base: 202
		</P></BODY></HTML>]],
	Warrior = [[<HTML><BODY>
		<H1> Melee Hit Rating (Dual-wield) </H1><P>
		Base: 403<BR/>
		w/ Weapon Mastery: 397<BR/>
		w/ Precision: 356<BR/>
		w/ Weapon Mastery + Precision: 350<BR/><BR/>
		</P><H1> Melee Hit Rating (2H/1H+Shield) </H1><P>
		Base: 136<BR/>
		w/ Weapon Mastery: 130<BR/>
		w/ Precision: 89<BR/>
		w/ Weapon Mastery + Precision: 83
		</P></BODY></HTML>]],
}


for class,notes in pairs(classtexts) do
	oh:RegisterCategory(class, function()
		local frame = CreateFrame("SimpleHTML", nil, OptionHouseOptionsFrame)
		frame:SetWidth(630)
		frame:SetHeight(305)
		frame:SetPoint("TOPLEFT", 190, -103)

		frame:SetFontObject(ChatFontNormal)
		frame:SetFontObject("H1", GameFontNormalLarge)
		frame:SetText(notes)

		return frame
	end)
end


