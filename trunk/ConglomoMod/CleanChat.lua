
--~~ if not ConglomoMod then ConglomoMod = {} end


--~~ ConglomoMod.CleanChat = ChatFrame_OnEvent


--~~ ChatFrame_OnEvent = function (...)
--~~   if arg9 and event ~= "CHAT_MSG_CHANNEL_NOTICE" then
--~~     local _, _, strip = string.find(arg9, "(.-)%s.*");
--~~  		this.CleanChat_Channelname = strip
--~~   end

--~~   if not this.OldAddMessage then
--~~     this.OldAddMessage = this.AddMessage

--~~     this.AddMessage = function (ref, ...)
--~~ 		  if ref.CleanChat_Channelname then
--~~ 		    arg[1] = string.gsub(arg[1], " " .. ref.CleanChat_Channelname, "", 1)
--~~ 		  end
--~~ 		  ref.CleanChat_Channelname = nil
--~~
--~~ 		  ref:OldAddMessage(unpack(arg))
--~~ 		end
--~~   end

--~~ 	return ConglomoMod.CleanChat(unpack(arg))
--~~ end

