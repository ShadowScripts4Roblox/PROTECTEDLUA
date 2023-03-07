print("0%")
wait(1)
print("25%")
wait(1)
print("50%")
wait(1)
print("75%")
wait(1)
print("100%")
wait(1)



local s = Instance.new("Sound")
s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=4520789398"
s.Volume = 100
s.Looped = false
s.archivable = false

s.Parent = game.Workspace

wait(0.1)
s:play()
wait(0.2)

loadstring(game:HttpGet('https://raw.githubusercontent.com/ShadowScripts4Roblox/PROTECTEDLUA/main/Scripts/DOORS/5.2.lua'))()
