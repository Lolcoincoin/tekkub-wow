
-------------------------------
--      Author Settings      --
-------------------------------

local addonname = "LocaleQuery" -- The name of your addon, duh!
local contact = "me@here.com" -- This is the email address you wish localizers to contact you at

-- This table indicates what locales are supported by your addon
-- true            == fully translated
-- false or nil    == no translations
-- any other value == partially translated
local locales = {
	deDE = false, -- German
	enGB = false, -- British English
	enUS = false, -- American English
	esES = false, -- Spanish
	frFR = false, -- French
	koKR = false, -- Korean
	ruRU = false, -- Russian
	zhCN = false, -- Chinese (simplified)
	zhTW = false, -- Chinese (traditional)
}


------------------------------
--      Locale testing      --
------------------------------

local loc = GetLocale()
local status = locales[loc]

if not status then -- Not translated
	local s = loc == "deDE" and "%s wurde nicht in deine Sprache uebersetzt. Wenn du helfen moechtest wende dich bitte an <%s> fuer Details, wie du Uebersetzungen einsenden kannst."
		or loc == "frFR" and "%s n'a pas \195\169t\195\169 traduit dans votre langue. Veuillez contacter <%s> pour les d\195\169tails concernant la submission de traductions."
		or loc == "esES" and "%s no ha sido traducido a tu lenguaje. Por favor contacta con <%s> para los detalles del envio de traducciones."
		or "%s has not been translated into your language.  Please contact <%s> for details on submitting translations."
	DEFAULT_CHAT_FRAME:AddMessage(string.format(s, addonname, contact))
elseif status ~= true then -- Partially translated
	local s = loc == "deDE" and "%s wurde nur teilweise in deine Sprache uebersetzt. Wenn du helfen moechtest wende dich bitte an <%s> fuer Details, wie du Uebersetzungen einsenden kannst."
		or loc == "frFR" and "%s n'est que partiellement traduit dans votre langue. Veuillez contacter <%s> pour les d\195\169tails concernant la submission de traductions."
		or loc == "esES" and "%s sólo está parcialmente traducido a tu lenguaje. Por favor contacta con <%s> para los detalles del envio de traducciones."
		or "%s is only partially translated into your language.  Please contact <%s> for details on submitting translations."
	DEFAULT_CHAT_FRAME:AddMessage(string.format(s, addonname, contact))
end

