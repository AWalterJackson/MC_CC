local guestName = ""

while(true)
do
    guestName = io.read()
    if(fs.exists("guestbook")) then
        local guestbook = fs.open("guestbook", "a")
        guestbook.write(guestName + "\n")
        guestbook.close()
    else
        local guestbook = fs.open("guestbook", "w")
        guestbook.write(guestName + "\n")
        guestbook.close()
    end
end