

local zips = {}
local h = assert(io.popen("dir /B *.zip", "r"))
for line in h:lines() do zips[line] = true end
h:close()


for zip in pairs(zips) do
	local _, _, fulladdon, addon, a, b, c = string.find(zip, "((.+)%-(%d+)%.(%d+)%.(%d+)%.%d+)%.zip")

	io.write(fulladdon.. "quality: ")
	local qual = io.read()

	os.execute(string.format("googlecode_upload.py -s %q -p \"tekkub-wow\" -u \"tekkub\" -l \"Addon-%s, Quality-%s, TOC-%d%02d%02d, Featured\" %s", fulladdon, addon, qual, a, b, c, zip))
end



