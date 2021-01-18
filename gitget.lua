local args = { ... }

local remoteFileName

if string.find(args[1], ".lua") then
    remoteFileName = args[1]
else
    remoteFileName = args[1] .. ".lua"
end

print("Downloading " .. remoteFileName)

local remoteContent = http.get("https://raw.github.com/AWalterJackson/MC_CC/master/" .. remoteFileName)
local localFile = fs.open(remoteFileName, "w")
localfile.write(remoteContent.readAll())
localfile.close()
print("Completed")