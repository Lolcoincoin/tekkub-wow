
local newtoc = select(1, ...)


local function readfile(file)
	local f = io.open(file, "r")
	if not f then return end
	local o = f:read("*all")
	f:close()
	return o
end

local function writefile(file, data)
	local f = assert(io.open(file, "w"), "Cannot open file to write")
	f:write(data)
	f:close()
end


local dirs = {}
local h = assert(io.popen("dir /B /A:D", "r"))
--~ local o = h:read("*all")
for line in h:lines() do dirs[line] = true end
h:close()


for dir in pairs(dirs) do
	if dir ~= ".svn" then
		local tocfile = readfile(string.format("%s/%s.toc", dir, dir))
		if tocfile then
			print("Updating "..dir)

			tocfile = string.gsub(tocfile, "## Interface:[^\n]+\n", "## Interface: "..newtoc.."\n")
			writefile(string.format("%s/%s.toc", dir, dir), tocfile)
		end
	end
end