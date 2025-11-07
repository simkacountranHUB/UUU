local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Rayfield Example Window",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Tab Example", 4483362458) -- Title, Image
local Button = Tab:CreateButton({
   Name = "KillAll",
   Callback = function()
   local Back = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
local Prompt = function()
    for i,v in pairs(game.Workspace.Dekorasi:GetChildren()) do
        if v.Name == "Handle" then
            if v.CFrame == CFrame.new(-1083.66052, 4.49962139, 1520.15698, 0, 0, -1, 0, 1, 0, 1, 0, 0) then
                return v.ProximityPrompt
            end
        end
    end
end
function KillAll()
    for i,v in pairs(game.Workspace:GetDescendants()) do
        if v.Name == "Humanoid" and v.Parent.Name ~= game.Players.LocalPlayer.Name then

            if game.Players.LocalPlayer.Character:FindFirstChild("Crystal Micro Uzi") then
                game.Players.LocalPlayer.Character["Crystal Micro Uzi"].Event:FireServer(v, math.huge)

            elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Crystal Micro Uzi") then
                game.Players.LocalPlayer.Backpack["Crystal Micro Uzi"].Event:FireServer(v, math.huge)
            end
        end
    end
end

game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1083.73157, 3.02450252, 1515.55859, -0.999925911, -4.51417392e-08, 0.0121708354, -4.47286084e-08, 1, 3.42163275e-08, -0.0121708354, 3.36694086e-08, -0.999925911)
wait(0.5)
fireproximityprompt(Prompt(), 1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-766.341553, 2.99999928, 4.37156296, -0.00617866311, 5.20746681e-08, 0.999980927, -8.22056307e-08, 1, -5.25835944e-08, -0.999980927, -8.25289561e-08, -0.00617866311)
wait(1)
KillAll()-- The function that takes place when the button is pressed
   end,
})
