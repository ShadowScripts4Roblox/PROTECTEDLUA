local ss = Instance.new("Sound")
ss.Name = "Sound"
ss.SoundId = "http://www.roblox.com/asset/?id=3320590485"
ss.Volume = 100
ss.Looped = false
ss.archivable = false





print("0%")
wait(0.1)

game.StarterGui:SetCore("SendNotification", {
Title = "Shadow Scripts - DOORS";
Text = "0%";
Icon = "rbxassetid://6646175695"; -- the image if u want. 
Duration = 0.2; -- how long the notification should in secounds
})

wait(0.2)
print("25%")

game.StarterGui:SetCore("SendNotification", {
Title = "Shadow Scripts - DOORS";
Text = "25%";
Icon = "rbxassetid://6646175695"; -- the image if u want. 
Duration = 0.4; -- how long the notification should in secounds
})

wait(0.4)
print("50%")

game.StarterGui:SetCore("SendNotification", {
Title = "Shadow Scripts - DOORS";
Text = "50%";
Icon = "rbxassetid://6646175695"; -- the image if u want. 
Duration = 1; -- how long the notification should in secounds
})

wait(1)
print("75%")

game.StarterGui:SetCore("SendNotification", {
Title = "Shadow Scripts - DOORS";
Text = "75%";
Icon = "rbxassetid://6646175695"; -- the image if u want. 
Duration = 0.2; -- how long the notification should in secounds
})

wait(0.2)

game.StarterGui:SetCore("SendNotification", {
Title = "Shadow Scripts - DOORS";
Text = "100% (Script Loaded)";
Icon = "rbxassetid://6646175695"; -- the image if u want. 
Duration = 1; -- how long the notification should in secounds
})

print("100%")
wait(0.1)



local s = Instance.new("Sound")
s.Name = "Sound"
s.SoundId = "http://www.roblox.com/asset/?id=9125485916"
s.Volume = 100
s.Looped = false
s.archivable = false

s.Parent = game.Workspace

wait(0.1)
s:play()

loadstring(game:HttpGet('https://raw.githubusercontent.com/ShadowScripts4Roblox/PROTECTEDLUA/main/Scripts/DOORS/5.2.lua'))()
