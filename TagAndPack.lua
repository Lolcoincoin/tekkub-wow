
local addon = arg[1]
local toc = arg[2]
local rev = arg[3]
local svnpath = "https://tekkub-wow.googlecode.com/svn"
local svn = '"C:\\Program Files\\SVN\\bin\\svn"'
local winrar = '"C:\\Program Files\\WinRAR\\rar"'
local fulladdon = string.format("%s-%s.%s", addon, toc, rev)


os.execute(string.format(
	'%s copy -r %s %s/trunk/%s %s/tags/%s -m "Tagging %s"',
	svn, rev, svnpath, addon, svnpath, fulladdon, fulladdon))

os.execute(string.format("%s export trunk/%s %s", svn, addon, addon))

os.execute(string.format("%s a %s.zip %s", winrar, fulladdon, addon))

os.execute("del /F /S /Q "..addon)
os.execute("rmdir /Q "..addon)
