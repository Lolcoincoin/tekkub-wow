
local conditionals, condevents = TEKONOMICS_CONDITIONALS, TEKONOMICS_EVENTS
TEKONOMICS_EVENTS, TEKONOMICS_CONDITIONALS = nil, nil


local condcache = {}
--~ local function GetConditionFunc(name)
--~ 	if condcache[name] ~= nil then return
setmetatable(condcache, {
	__index = function(t, i)
		local condition = GetAddOnMetadata(i, "X-tekonomics-customcond")
		if condition then
			local func, errorMessage = loadstring(condition)
			if errorMessage then error(errorMessage) end
			t[i] = func
			return func
		end

		local name = GetAddOnMetadata(i, "X-tekonomics-predefinedcond")
		if not name then name = GetAddOnMetadata(i, "X-tekonomics") end
		if name then
			if not conditionals[name] then error("Cannot find predefined condition '"..name.."'") end
			t[i] = conditionals[name]
			return conditionals[name]
		end

		t[i] = false
		return false
	end,
})


local events = {}
local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event, ...)
	if events[event] then
		for name in pairs(events[event]) do
			if IsAddOnLoaded(name) then events[event][name] = nil
			elseif condcache[name] and condcache[name](event, ...) then
				condcache[name] = nil
				LoadAddOn(name)
			end
		end

		if not next(events[event]) then
			self:UnregisterEvent(event)
			events[event] = nil
		end
	else self:UnregisterEvent(event) end
end)


local function addevent(event, name)
	if not events[event] then events[event] = {} end
	events[event][name] = true
end


for i=1,GetNumAddOns() do
	if IsAddOnLoadOnDemand(i) then
		local name = GetAddOnInfo(i)

		local event = GetAddOnMetadata(name, "X-tekonomics-customevent")
		if event then addevent(event, name) end

		local cond = GetAddOnMetadata(name, "X-tekonomics")
		if cond and condevents[cond] then
			if type(condevents[cond]) == "table" then
				for _,event in pairs(condevents[cond]) do addevent(event, name) end
			else addevent(condevents[cond], name) end
		end
	end
end

for event,val in pairs(events) do
	if next(val) then f:RegisterEvent(event) end
end


