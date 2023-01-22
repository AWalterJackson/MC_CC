local args = { ... }
local remoteFileName

if string.find(args[1], ".lua") then
    remoteFileName = args[1]
else
    remoteFileName = args[1] .. ".lua"
end

print("Acquiring " .. remoteFileName .. " from github...")

local remoteContent = http.get("https://raw.github.com/AWalterJackson/MC_CC/master/" .. remoteFileName)
local localFile = fs.open(remoteFileName, "w")
localFile.write(remoteContent.readAll())
localFile.close()
print("Completed")