
function fixchatcrap()
	for i=1,7 do
		getglobal("ChatFrame"..i.."ResizeBottomLeft"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeBottomRight"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeTopLeft"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeTopRight"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeTop"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeBottom"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeRight"):EnableMouse(false);
		getglobal("ChatFrame"..i.."ResizeLeft"):EnableMouse(false);
	end
end

--~ WoWWiki = Dongle:New("WoWWiki")
