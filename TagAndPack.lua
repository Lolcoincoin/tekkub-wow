
local svnpath = "https://tekkub-wow.googlecode.com/svn"


io.write("Tag name (Addon-T.O.C.rev): ")
local version = io.read()

local _, _, addon, toc, rev = string.find(version, "^(.+)-(%d+%.%d+%.%d+)%.(%d+)$")
assert(addon and toc and rev, "Invalid input!")

local fulladdon = string.format("%s-%s.%s", addon, toc, rev)


os.execute(string.format(
	"svn copy -r %s %s/trunk/%s %s/tags/%s -m \"Tagging %s\"",
	rev, svnpath, addon, svnpath, fulladdon, fulladdon))

os.execute(string.format("svn export trunk/%s %s", addon, addon))

os.execute(string.format("rar a %s.zip %s", fulladdon, addon))

os.execute("del /F /S /Q "..addon)
os.execute("rmdir /Q "..addon)
