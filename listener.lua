local modems = peripheral.find("modem")

if modems ~= nil then
    local activeModem = modems[1]
    rednet.open(activeModem)
    while true do
        local message = rednet.receive()
        print(message)
    end
else
    print("No attached modem")
end