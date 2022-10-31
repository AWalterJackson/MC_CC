local args = { ... }

local value
if args[1] == "+" then
    value = 1
elseif args[1] == "-" then
    value = -1
else
    return
end

local storedValue
if fs.exists("counter") then
    local dataFile = fs.open("counter", "r")
    storedValue = tonumber(dataFile.readAll())
    dataFile.close()
else
    storedValue = 0
end

local dataFile = fs.open("counter", "w")
dataFile.write(tostring(storedValue + value))
dataFile.close()