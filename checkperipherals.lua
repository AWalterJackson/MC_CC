print("Connected Peripherals")
if peripheral.isPresent("left") then
    print("Left: " .. peripheral.type("left"))
end
if peripheral.isPresent("right") then
    print("Right: " .. peripheral.type("right"))
end
if peripheral.isPresent("top") then
    print("Top: " .. peripheral.type("top"))
end
if peripheral.isPresent("bottom") then
    print("Bottom: " .. peripheral.type("bottom"))
end
if peripheral.isPresent("front") then
    print("Front: " .. peripheral.type("front"))
end
if peripheral.isPresent("back") then
    print("Back: " .. peripheral.type("back"))
end