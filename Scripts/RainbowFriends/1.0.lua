--[[Go Burn in hell >:( ]]












































































































































































































































































































































local start = os.clock()


--settings things up
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowScripts4Roblox/PROTECTEDLUA/main/Library/Vynixu'sLib.lua"))()
--check where the player is..
Library:Notify({title = "Shadow Scripts", text = "Loading Script..", duration = "5", color = Color3.fromRGB(0, 0, 255)})

local Inviter = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Discord%20Inviter/Source.lua"))()
local KeyGrabber = loadstring(game:HttpGet("https://raw.githubusercontent.com/ShadowScripts4Roblox/PROTECTEDLUA/main/Credits.lua"))()


local SelfModules = {
	UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/UI.lua"))(),
	Directory = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Directory.lua"))(),
}
local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))()
ESP.Players = false
ESP.Boxes = false
ESP.Names = true
ESP.Tracers = false
ESP:Toggle(true)


SelfModules.Directory.Create({
	["Shadow Scripts"] = {
		"RainbowFriends"
	},
})

Library.Settings.ConfigPath = "Shadow Scripts/RainbowFriends"

local Window = Library:AddWindow({
	title = {"Shadow Scripts", "Rainbow Friends 1.0"},
	theme = {
		Accent = Color3.fromRGB(0, 0, 255)
	},
	key = Enum.KeyCode.LeftControl,
	default = true
})

local Player = game.Players.LocalPlayer
local Character = Player.Character
local Humanoid = Character.Humanoid

local Tab = Window:AddTab("Key System", {default = true})

local Section = Tab:AddSection("Join Discord to get Key!", {default = true})

ClipboardLabel = Section:AddClipboardLabel("Copy Discord Link", function()
	return "https://discord.gg/4vT5j8efrg"
end)
DualLabel = Section:AddDualLabel({"Discord", "4vT5j8efrg"})

Button = Section:AddButton("Join Discord [By Discord app]", function()
Inviter.Prompt({
    name = "Shadow Scripts",
    invite = "https://discord.gg/4vT5j8efrg",
})

end)
local key = "dk"

key = KeyGrabber

local EnteredKey = nil
local Box = Section:AddBox("Key", {fireonempty = true}, function(text)
	EnteredKey = text
end)

local Button = Section:AddButton("Enter", function()
	if EnteredKey == key then

		-- Create Tab
local Tab = Window:AddTab("Player", {default = true})

-- Create Section
local Section = Tab:AddSection("Player", {default = true})

Box = Section:AddBox("Health Set", {fireonempty = false}, function(text)
	Humanoid.Health = text
end)


local Slider = Section:AddSlider("Speed", 9, 100, 16, {toggleable = true, default = false, flag = "SpeedFlaggg", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
if bool == true then
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = val
 else
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
 end
end)

local Slider = Section:AddSlider("JumpPower", 0, 100, 0, {toggleable = true, default = false, flag = "SpeedFlaggg", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
    if bool == true then
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = val
     else
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 0
     end
    end)

local Toggle = Section:AddToggle("Fly", {flag = "flyingFLAG", default = false}, function(bool)
	if bool then
		_G.FLYING = false
		local LP = game:service('Players').LocalPlayer
		local T = LP.Character.UpperTorso
		local CONTROL = {F = 0, B = 0, L = 0, R = 0}
		local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
		local SPEED = 5
		local MOUSE = LP:GetMouse()
		
		
		local function FLY()
		   _G.FLYING = true
		   local BG = Instance.new('BodyGyro', T)
		   local BV = Instance.new('BodyVelocity', T)
		   BG.P = 9e4
		   BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		   BG.cframe = T.CFrame
		   BV.velocity = Vector3.new(0, 0.1, 0)
		   BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
		
		
		   spawn(function()
			 repeat wait()
			   LP.Character.Humanoid.PlatformStand = true
			   if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
				 SPEED = 50
			   elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
				 SPEED = 0
			   end
			   if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
				 BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
				 lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
			   elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
				 BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
			   else
				 BV.velocity = Vector3.new(0, 0.1, 0)
			   end
			   BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
			 until not _G.FLYING
			 CONTROL = {F = 0, B = 0, L = 0, R = 0}
			 lCONTROL = {F = 0, B = 0, L = 0, R = 0}
			 SPEED = 0
			 BG:destroy()
			 BV:destroy()
			 LP.Character.Humanoid.PlatformStand = false
		   end)
		 end
		 
		 MOUSE.KeyDown:connect(function(KEY)
		   if KEY:lower() == 'w' then
			 CONTROL.F = 1
		   elseif KEY:lower() == 's' then
			 CONTROL.B = -1
		   elseif KEY:lower() == 'a' then
			 CONTROL.L = -1
		   elseif KEY:lower() == 'd' then
			 CONTROL.R = 1
		   end
		 end)
		 
		 MOUSE.KeyUp:connect(function(KEY)
		   if KEY:lower() == 'w' then
			 CONTROL.F = 0
		   elseif KEY:lower() == 's' then
			 CONTROL.B = 0
		   elseif KEY:lower() == 'a' then
			 CONTROL.L = 0
		   elseif KEY:lower() == 'd' then
			 CONTROL.R = 0
		   end
		 end)
		
		 FLY()
		 else
			 _G.FLYING = false
		end
end)

local Slider = Section:AddSlider("FOV", 10, 150, 70, {toggleable = true, default = false, flag = "FOVFlag", fireontoggle = true, fireondrag = true, rounded = true}, function(val, bool)
	if bool == true then
		game:GetService'Workspace'.Camera.FieldOfView = val
	 else
		game:GetService'Workspace'.Camera.FieldOfView = 70
	 end

end)

-- Create Tab
local Tab = Window:AddTab("Game", {default = false})

-- Create Section
local Section = Tab:AddSection("ESP Config", {default = true})


--entity esp maker



local Toggle = Section:AddToggle("Boxes", {flag = "ESP_Box", default = false}, function(bool)
    ESP.Boxes = bool
end)

local Toggle = Section:AddToggle("Tracers", {flag = "ESP_Trace", default = false}, function(bool)
    ESP.Tracers = bool
end)

local Toggle = Section:AddToggle("Names", {flag = "ESP_Name", default = true}, function(bool)
    ESP.Names = bool
end)



if game:GetService("ReplicatedStorage").Chapter.Value == 1 then

local Section = Tab:AddSection("Chapter 1", {default = false})

Library:Notify({title = "Shadow Scripts", text = "The Script Does not Support Chapter 1 yet! some things wont work!", duration = "5", color = Color3.fromRGB(0, 0, 255)})


local Toggle = Section:AddToggle("Monsters ESP", {flag = "RainbowFriendsESP", default = false}, function(bool)


	--blue
	ESP:AddObjectListener(Workspace.Monsters, {Name = "Blue",  CustomName = "Blue",  Color = Color3.fromRGB(0, 10, 255),   IsEnabled = "BlueMonster"})
	--Green
	ESP:AddObjectListener(Workspace.Monsters, {Name = "Green",  CustomName = "Green",  Color = Color3.fromRGB(0, 255, 10),   IsEnabled = "GreenMonster"})
	--Purple
	ESP:AddObjectListener(Workspace.Monsters, {Name = "Purple",  CustomName = "Purple",  Color = Color3.fromRGB(255, 0, 255),   IsEnabled = "PurpleMonster"})
	--Orange
	ESP:AddObjectListener(Workspace.Monsters, {Name = "Orange",  CustomName = "Orange",  Color = Color3.fromRGB(255, 255, 127),   IsEnabled = "YellowMonster"})

	ESP.BlueMonster = bool    ESP.GreenMonster = bool   ESP.PurpleMonster = bool   ESP.YellowMonster = bool       ESP.CyanMonster = bool
	
end)

local Toggle = Section:AddToggle("Players ESP", {flag = "PlayersESP", default = false}, function(bool)
	ESP.Players = bool
end)


end -- end of checking if player is on chapter 1



-- Create Section
if game:GetService("ReplicatedStorage").Chapter.Value == 2 then
local Section = Tab:AddSection("Chapter 2", {default = false})

local ItemNames = {"LightBulb", "GasCanister", "Looky", "CakeMix"}
local ItemPlaceNames = {"EmergencyLight", "RamAir", "LookyPen", "CakeStructure"}

Button = Section:AddButton("Pick up Items", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
			if table.find(ItemNames,v.Parent.Parent.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
        print(v.Parent.Parent.Name.. " Item Was Found! & was Picked up")
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
			end
           end
        end
end)

Button = Section:AddButton("Place down Items", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
			if table.find(ItemPlaceNames,v.Parent.Parent.Name) then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
        print("Items were put in: "..v.Parent.Parent.Name)
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
			end
           end
        end
end)

Button = Section:AddButton("Open All Doors", function()
    for _,v in pairs(workspace:GetDescendants()) do
        if v:IsA("TouchTransmitter") then
			if v.Parent.Parent.Parent.Name == "Doors_Client" then
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 0) --0 is touch
        print(v.Parent.Parent.Name.. "Was Opened!")
        wait()
        firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart, v.Parent, 1) -- 1 is untouch
			end
           end
        end
end)


local Toggle = Section:AddToggle("Items ESP", {flag = "itemsESP", default = false}, function(bool)

    ESP:AddObjectListener(Workspace, {Name = "LightBulb",  CustomName = "Light bulb",  Color = Color3.fromRGB(0, 0, 255),   IsEnabled = "Lightbulbs"})
    ESP:AddObjectListener(Workspace, {Name = "GasCanister",  CustomName = "Gas",  Color = Color3.fromRGB(0, 0, 255),   IsEnabled = "GasCanister"})
	ESP:AddObjectListener(Workspace.ignore, {Name = "Looky",  CustomName = "Looky",  Color = Color3.fromRGB(0, 0, 255),   IsEnabled = "Lokkie"})
	ESP:AddObjectListener(Workspace, {Name = "CakeMix",  CustomName = "Cake Mix",  Color = Color3.fromRGB(0, 0, 255),   IsEnabled = "Cake"})

ESP.Lightbulbs = bool   ESP.GasCanister = bool  ESP.Lokkie = bool     ESP.Cake = bool
      
end)




local Toggle = Section:AddToggle("Monsters ESP", {flag = "RainbowFriendsESP", default = false}, function(bool)


--blue
ESP:AddObjectListener(Workspace.Monsters, {Name = "Blue",  CustomName = "Blue",  Color = Color3.fromRGB(0, 10, 255),   IsEnabled = "BlueMonster"})
--Green
ESP:AddObjectListener(Workspace.Monsters, {Name = "Green",  CustomName = "Green",  Color = Color3.fromRGB(0, 255, 10),   IsEnabled = "GreenMonster"})
--Purple
ESP:AddObjectListener(Workspace.Monsters, {Name = "Purple",  CustomName = "Purple",  Color = Color3.fromRGB(255, 0, 255),   IsEnabled = "PurpleMonster"})
--Yellow
ESP:AddObjectListener(Workspace.Monsters, {Name = "Bird",  CustomName = "Yellow",  Color = Color3.fromRGB(255, 255, 127),   IsEnabled = "YellowMonster"})
--Cyan
ESP:AddObjectListener(Workspace.Monsters, {Name = "Cyan",  CustomName = "Cyan",  Color = Color3.fromRGB(175,238,238),   IsEnabled = "CyanMonster"})

ESP.BlueMonster = bool    ESP.GreenMonster = bool   ESP.PurpleMonster = bool   ESP.YellowMonster = bool       ESP.CyanMonster = bool

end)

local Toggle = Section:AddToggle("Players ESP", {flag = "PlayersESP", default = false}, function(bool)
	ESP.Players = bool
end)

local Label = Section:AddLabel("Teleports")

local Button = Section:AddButton("Teleport To Laser Tag Plaza", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.0247955, 135.59996, -21.3595238, -0.754856467, -5.90029074e-08, -0.655890048, -1.01257847e-07, 1, 2.65779772e-08, 0.655890048, 8.64765681e-08, -0.754856467)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(44.0247955, 135.59996, -21.3595238, -0.754856467, -5.90029074e-08, -0.655890048, -1.01257847e-07, 1, 2.65779772e-08, 0.655890048, 8.64765681e-08, -0.754856467) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Ferris Wheel", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.7799377, 135.59996, 119.838181, -0.823994517, -9.14903708e-09, 0.56659776, -1.41675871e-08, 1, -4.45638459e-09, -0.56659776, -1.16993597e-08, -0.823994517)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(61.7799377, 135.59996, 119.838181, -0.823994517, -9.14903708e-09, 0.56659776, -1.41675871e-08, 1, -4.45638459e-09, -0.56659776, -1.16993597e-08, -0.823994517) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Rainbow Racers", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.937836, 118.599976, -131.390167, 0.405106723, -7.58816796e-08, 0.914269388, 6.31280983e-09, 1, 8.01999036e-08, -0.914269388, -2.67179114e-08, 0.405106723)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(132.937836, 118.599976, -131.390167, 0.405106723, -7.58816796e-08, 0.914269388, 6.31280983e-09, 1, 8.01999036e-08, -0.914269388, -2.67179114e-08, 0.405106723) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Purple's Lair", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.55925, 115.099976, -62.2660484, 0.983782411, 8.59551186e-09, -0.179366156, -1.04291926e-08, 1, -9.28014376e-09, 0.179366156, 1.1000286e-08, 0.983782411)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(182.55925, 115.099976, -62.2660484, 0.983782411, 8.59551186e-09, -0.179366156, -1.04291926e-08, 1, -9.28014376e-09, 0.179366156, 1.1000286e-08, 0.983782411) 
    wait(0.3) 
end)

--[[
local Button = Section:AddButton("Teleport To", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new()
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new() 
    wait(0.3) 
end)
]]

local Button = Section:AddButton("Teleport To Control Office", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.080734, 127.599976, 2.72240043, 0.216697007, -9.25878325e-08, -0.976238906, 1.45694932e-08, 1, -9.16073617e-08, 0.976238906, 5.62773472e-09, 0.216697007)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(252.080734, 127.599976, 2.72240043, 0.216697007, -9.25878325e-08, -0.976238906, 1.45694932e-08, 1, -9.16073617e-08, 0.976238906, 5.62773472e-09, 0.216697007) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Blue's Castle", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.665665, 128.303528, 25.9034271, -0.0726973265, 9.19998122e-09, -0.997354031, 8.97390038e-08, 1, 2.68329514e-09, 0.997354031, -8.93064893e-08, -0.0726973265)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(239.665665, 128.303528, 25.9034271, -0.0726973265, 9.19998122e-09, -0.997354031, 8.97390038e-08, 1, 2.68329514e-09, 0.997354031, -8.93064893e-08, -0.0726973265) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Blue's Chair", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.512299, 134.172409, 87.6295471, 0.477772683, 3.30333405e-09, 0.878483474, -3.98425755e-08, 1, 1.79085458e-08, -0.878483474, -4.35572609e-08, 0.477772683)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(286.512299, 134.172409, 87.6295471, 0.477772683, 3.30333405e-09, 0.878483474, -3.98425755e-08, 1, 1.79085458e-08, -0.878483474, -4.35572609e-08, 0.477772683) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Orange's Cavern Coaster", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.472351, 128.59996, -43.4473114, -0.0721260682, 3.26387699e-08, -0.997395515, -4.51667148e-08, 1, 3.5990201e-08, 0.997395515, 4.76449102e-08, -0.0721260682)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(202.472351, 128.59996, -43.4473114, -0.0721260682, 3.26387699e-08, -0.997395515, -4.51667148e-08, 1, 3.5990201e-08, 0.997395515, 4.76449102e-08, -0.0721260682) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Green's Drop Tower", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.860168, 130.601974, 12.6037045, 0.224262938, 2.01300985e-08, -0.97452867, 1.95025347e-08, 1, 2.51442511e-08, 0.97452867, -2.46447023e-08, 0.224262938)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(154.860168, 130.601974, 12.6037045, 0.224262938, 2.01300985e-08, -0.97452867, 1.95025347e-08, 1, 2.51442511e-08, 0.97452867, -2.46447023e-08, 0.224262938) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Sewers", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.8666153, 117.599976, 37.308918, -0.821380198, -1.04389954e-07, -0.570381045, -7.11793575e-08, 1, -8.05157114e-08, 0.570381045, -2.55346571e-08, -0.821380198)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(79.8666153, 117.599976, 37.308918, -0.821380198, -1.04389954e-07, -0.570381045, -7.11793575e-08, 1, -8.05157114e-08, 0.570381045, -2.55346571e-08, -0.821380198) 
    wait(0.3) 
end)

local Button = Section:AddButton("Teleport To Waterfall", function()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(175.229553, 124.900505, 136.713654, 0.993502975, 3.64356829e-08, -0.113806278, -2.87520834e-08, 1, 6.9156151e-08, 0.113806278, -6.54346692e-08, 0.993502975)
    wait(0.3)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(175.229553, 124.900505, 136.713654, 0.993502975, 3.64356829e-08, -0.113806278, -2.87520834e-08, 1, 6.9156151e-08, 0.113806278, -6.54346692e-08, 0.993502975) 
    wait(0.3) 
end)

end --end of checking if player is in chapter 2

end

end)




local Tab = Window:AddTab("Settings", {default = false})
local Section = Tab:AddSection("Script Settings", {default = false})
local Bind = Section:AddBind("Toggle Ui Keybind", Enum.KeyCode.RightControl, {toggleable = false, default = false, flag = "KeycodeForUI"}, function(keycode)
	Window:SetKey(keycode)
end)

local Picker = Section:AddPicker("Accent Color", {color = Color3.fromRGB(0, 0, 255)}, function(color)
	Window:SetAccent(color)
end)

Tab:AddConfigs()

local Section = Tab:AddSection("Credits", {default = false})
local DualLabel = Section:AddDualLabel({"UI", "Vynixu"})
local DualLabel = Section:AddDualLabel({"Code", "Shadow Slime"})
local DualLabel = Section:AddDualLabel({"Code", "Mario Man"})


local Section = Tab:AddSection("Discord", {default = false})

ClipboardLabel = Section:AddClipboardLabel("Copy Discord Link", function()
	return "https://discord.gg/4vT5j8efrg"
end)
DualLabel = Section:AddDualLabel({"Discord", "4vT5j8efrg"})

Button = Section:AddButton("Join Discord [By Discord app]", function()
Inviter.Prompt({
    name = "Shadow Scripts",
    invite = "https://discord.gg/4vT5j8efrg",
})
end)


--finish execution

local finish = os.clock()
local time = finish - start
local rating
if time < 3 then
   rating = "fast"
elseif time < 5 then
   rating = "acceptable"
else
   rating = "slow"
end

Library:Notify({title = "Shadow Scripts", text = string.format("Script loaded in %.2f seconds (%s loading)", time, rating), duration = "5", color = Color3.fromRGB(0, 0, 255)})
