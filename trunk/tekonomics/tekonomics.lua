
local conditionals = TEKONOMICS_CONDITIONALS
TEKONOMICS_CONDITIONALS = nil


local condcache = {}
setmetatable(condcache, {
	__index = function(t, i)
		local condition = GetAddOnMetadata(i, "X-tekonomics-condfunc")
		if condition then
			local func, errorMessage = loadstring(condition)
			if errorMessage then error(errorMessage) end
			condcache[i] = func()
			return func
		end

		local name = GetAddOnMetadata(i, "X-tekonomics-condname")
		if name then
			if not conditionals[name] then error("Cannot find predefined condition '"..name.."'") end
			condcache[i] = conditionals[name]
			return func
		end

		condcache[i] = false
		return false
	end,
})


local events = {}
local f = CreateFrame("Frame")
f:SetScript("OnEvent", function(self, event, ...)
	if events[event] then
		for name in pairs(events[event]) do
			if IsAddOnLoaded(name) then events[event][name] = nil
			elseif not condcache[name] or condcache[name](event, ...) then
				condcache[name] = nil
				LoadAddOn(name)
			end
		end

		if not next(events[event]) then
			self:UnregisterEvent(event)
			events[event] = nil
		end
	else self:UnregisterEvent(event) end
end


for i=1,GetNumAddOns() do
	if IsAddOnLoadOnDemand(i) then
		local name = GetAddOnInfo(i)
		local event = GetAddOnMetadata(name, "X-tekonomics-event")

		if event then
			if not events[event] then events[event] = {} end
			events[event][name] = true
		end
	end
end

for event,val in pairs(events) do
	if next(val) then f:RegisterEvent(event) end
end


