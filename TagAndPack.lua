
local svnpath = "https://tekkub-wow.googlecode.com/svn"
local arg1 = select(1, ...)


local function shell(c)
	local o, h
	h = assert(io.popen(c, "r"))
	o = h:read("*all")
	h:close()
	return o
end

local function readfile(file)
	local f = io.open(file, "r")
	if not f then return "" end
	local o = f:read("*all")
	f:close()
	return o
end

local function writefile(file, data)
	local f = assert(io.open(file, "w"), "Cannot open file to write")
	f:write(data)
	f:close()
end


-- Request addon name
io.write("Addon name: ")
local addon = io.read()


-- Find last Rev
print("Finding version number")
local info = shell(string.format("svn info %s/trunk/%s", svnpath, addon))
local _, _, rev = string.find(info, "Last Changed Rev: (%d+)")
assert(rev, "Cannot find revision info!")


-- Find TOC value
local tocfile = readfile(string.format("trunk/%s/%s.toc", addon, addon))
local _, _, a,b,c = string.find(tocfile, "## Interface: (%d)(%d%d)(%d%d)")
assert(a and b and c, "Cannot find TOC info!")

local version = string.format("%d.%d.%d.%d", tonumber(a), tonumber(b), tonumber(c), tonumber(rev))
local fulladdon = string.format("%s-%s", addon, version)

print(fulladdon)


-- Verify tag doesn't exist
print("Verifying tag path")
local taginfo = shell(string.format("svn info %s/tags/%s", svnpath, fulladdon))
if #taginfo ~= 0 and (not arg1 or arg1 ~= "zip") then

	-- Make the tag
	print("Tagging")
	os.execute(string.format(
		"svn copy -r %s %s/trunk/%s %s/tags/%s -m \"Tagging %s\"",
		rev, svnpath, addon, svnpath, fulladdon, fulladdon))


	-- Update tag's TOC Version
	os.execute(string.format("svn co %s/tags/%s", svnpath, fulladdon))
	if string.find(tocfile, "## Version:") then
		tocfile = string.gsub(tocfile, "## Version:[^\n]+\n", "## Version: "..version.."\n")
		writefile(string.format("%s/%s.toc", fulladdon, addon), tocfile)
		print("Updating TOC version")
		os.execute("svn commit "..fulladdon.." -m \"Updating TOC version\"")
	end
	os.execute("rmdir /Q /S "..fulladdon)
elseif arg1 and arg1 == "zip" then -- nothing
else print("This tag already exists!  Skipping tag ops.") end


-- Make zip package
print("Packaging release")
os.execute(string.format("svn export %s/tags/%s %s", svnpath, fulladdon, addon))
os.execute(string.format("winrar a %s.zip %s", fulladdon, addon))
os.execute("rmdir /Q /S "..addon)
