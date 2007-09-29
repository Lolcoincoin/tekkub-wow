
local dirs = {}
local h = assert(io.popen("dir /B /A:D", "r"))
for line in h:lines() do dirs[line] = true end
h:close()


for dir in pairs(dirs) do
	if dir ~= ".svn" then
		local h = assert(io.popen("svn info "..dir, "r"))
		local o = h:read("*all")
		h:close()

		if string.find(o, "tekkub.wow.googlecode.com") then
			print("Updating "..dir)
			os.execute("svn up "..dir)
		end
	end
end