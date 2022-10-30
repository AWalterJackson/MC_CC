local args = { ... }

if(args[1]) then
    if(fs.exists(args[1])) then
        readfile = fs.open(args[1], "r")
        print(readfile.readAll())
        readfile.close()
    else
        print("File not found")
    end
else
    print("No path specified")
end