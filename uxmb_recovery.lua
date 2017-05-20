-- ## Menu Internal Config ##
option,y=1,37
buttons.interval(10,10)

while true do
color.loadpalette()
-- ## GUI of Recovery ##
-- ## GUI de Recovery ## 
screen.print(175,5,"UXMB Recovery Assistant",0.5,color.red)
screen.print(0,20,"----------------------------------------------------------------------------------------")
screen.print(0,240,"----------------------------------------------------------------------------------------")

-- ## Recovery Menu ##

screen.print(35,37,"Enter to UXMB / Entrar a UXMB",0.6)
screen.print(35,49,"Exit to Original XMB / Salir al XMB Original",0.6)
screen.print(12,y," -> ",0.6)

buttons.read()

if buttons.down then
    option += 1
    y += 12
elseif buttons.up then
    option -= 1
    y -= 12
end

if option < 1 then
    option,y = 2,49
end

if option > 2 then
    option,y = 1,37
end

if buttons.cross then
    if option == 1 then
        dofile("sys/greepy.pacme")
    elseif option == 2 then
    os.exit()
    end
end

-- ## Take a Screenshot ##
if buttons.start then
    screen.shot()
end


screen.flip()
end
