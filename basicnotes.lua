local args = { ... }

if fs.exists("basicNotes") then
    if fs.isDir("basicNotes") then
    else
        print("Error: BasicNotes folder is not directory")
    end
else
    fs.makeDir("basicNotes")
end

if fs.exists("basicNotes/notesFile") then
else
    local notesFile = fs.open("basicNotes/notesFile", "w")
    notesFile.write("")
    notesFile.close()
end

if args[1] == "list" then
    local notesFile = fs.open("basicNotes/notesFile", "r")
    local fileContents = notesFile.readAll()
    notesFile.close()
    print(fileContents)
    return
elseif args[1] == "new" then
    local notesFile = fs.open("basicNotes/notesFile", "a")
    for i = 2, table.getn(args),2,1
    do
        notesFile.write(args[i])
    end
    notesFile.write("\n")
    notesFile.close()
    return
end