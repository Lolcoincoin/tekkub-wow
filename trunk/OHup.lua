
local old = 'DongleStub..OptionHouse.1.0.'
local new = 'LibStub("OptionHouse-1.1")'


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
for line in h:lines() do dirs[line] = true end
h:close()


for dir in pairs(dirs) do
	if dir ~= ".svn" then
--~ 		print("Processing "..dir)
		local files = {}
		local h = assert(io.popen("dir "..dir.." /B /A:-D", "r"))
		for line in h:lines() do files[line] = true end
		h:close()

		for file in pairs(files) do
--~ 			print(" Opening "..dir.."/"..file)
			local editfile = readfile(string.format("%s/%s", dir, file))
			if editfile then
				if string.find(editfile, old) then
					print("  Updating "..file)

					editfile = string.gsub(editfile, old, new)
					writefile(string.format("%s/%s", dir, file), editfile)
				end
			end
		end
	end
end