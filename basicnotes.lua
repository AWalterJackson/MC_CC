local args = { ... }

if fs.exists("gitgetProgramData/basicNotes") then
    if fs.isDir("gitgetProgramData/basicNotes") then
    else
        print("Error: BasicNotes folder is not directory")
    end
else
    fs.makeDir("gitgetProgramData/basicNotes")
end

if fs.exists("gitgetProgramData/basicNotes/notesFile") then
else
    local notesFile = fs.open("gitgetProgramData/basicNotes/notesFile", "w")
    notesFile.write("")
    notesFile.close()
end

if args[1] == "list" then
    local notesFile = fs.open("gitgetProgramData/basicNotes/notesFile", "r")
    local fileContents = notesFile.readAll()
    notesFile.close()
    print(fileContents)
    return
elseif args[1] == "new" then
    local notesFile = fs.open("gitgetProgramData/basicNotes/notesFile", "a")
    for i = 2, table.getn(args),2,1
    do
        notesFile.write(args[i])
    end
    notesFile.write("\n")
    notesFile.close()
    return
end