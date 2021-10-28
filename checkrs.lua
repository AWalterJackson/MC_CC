print("Checking redstone state...")
if redstone.getInput("left") then
    print("Left: Online")
else
    print("Left: Offline")
end
if redstone.getInput("right") then
    print("Right: Online")
else
    print("Right: Offline")
end
if redstone.getInput("top") then
    print("Top: Online")
else
    print("Top: Offline")
end
if redstone.getInput("bottom") then
    print("Bottom: Online")
else
    print("Bottom: Offline")
end
if redstone.getInput("front") then
    print("Front: Online")
else
    print("Front: Offline")
end
if redstone.getInput("back") then
    print("Back: Online")
else
    print("Back: Offline")
end