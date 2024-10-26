
local Speed = 250
local Hitbox = 30




local GetWaypoints = loadstring(game:HttpGet("https://raw.githubusercontent.com/A-200Moving/Rooms/refs/heads/main/Waypoints.lua"))()

local TS = game:GetService("TweenService")

local Waypoints = {}

local Part = Instance.new("Part")
Part.Anchored = true
Part.Name = "Entity"
Part.Size = Vector3.new(5,5,5)
Part.CFrame = workspace.start.door.CFrame
Part.Parent = workspace
Part.CanCollide = false
Part.Transparency = 1
local Sound = Instance.new("Sound")
Sound.PlaybackSpeed = 2
Sound.Volume = 5
Sound.Looped = true
Sound.SoundId = "https://www.roblox.com/asset/?id=9126159606"
Sound.Parent = Part
local distort = Instance.new("DistortionSoundEffect")
distort.Parent = Sound
distort.Level = 0.75
local pitch = Instance.new("PitchShiftSoundEffect")
pitch.Octive = 0.5
Sound:Play()
local Face = Instance.new("BillboardGui")
Face.Size = UDim2.new(7,0,7,0)
Face.Parent = Part
local Image = Instance.new("ImageLabel")
Image.Size = UDim2.new(1,0,1,0)
Image.BackgroundTransparency = 1
Image.Image = "rbxassetid://15146660639"
Image.Parent = Face
local PL = Instance.new("PointLight")
PL.Brightness = 15
PL.Range = 20
PL.Color = Color3.new(1,0,0)
PL.Parent = Part

if workspace:FindFirstChild("Waypoints") then
   for _,v in pairs(workspace:FindFirstChild("Waypoints"):GetChildren()) do
   table.insert(Waypoints, v)
end
end

workspace.Waypoints.ChildAdded:Connect(function(v)
   table.insert(Waypoints, v)
end)

spawn(function()
loop = nil 
loop = game:GetService("RunService").RenderStepped:connect(function()
   if Part and Part.Parent then
      local plr = game:GetService("Players").LocalPlayer
   local Char = plr.Character
   local hum = Char:FindFirstChild("Humanoid")
   local rootpart = Char:FindFirstChild("HumanoidRootPart")
  if hum and rootpart then
     if Char:FindFirstChild("safe") then
         if Char.safe.Value == 0 and hum.Health > 0 then
             if (rootpart.Position - Part.Position).Magnitude <= Hitbox then
                  hum:TakeDamage(100)
             end
         end
     end
  end
   else
      loop:Disconnect()
   end
end)
end)

spawn(function()
   while true do
    Image.Image = "rbxassetid://192267375"
    wait(0.1)
    Image.Parent.Image = "rbxassetid://1972219027"
    wait(0.1)
    Image.Parent.Image = "rbxassetid://1822114127"
    wait(0.1)
    Image.Parent.Image = "rbxassetid://14084270847"
    wait(0.1)
    Image.Parent.Image = "rbxassetid://3413871766"
    wait(0.1)
    Image.Parent.Image = "rbxassetid://17865063"
    wait(0.1)
   end
end)

while wait() do
   for index, waypoint in pairs(Waypoints) do
      if waypoint then
         local distance = (waypoint.Position - Part.Position).Magnitude
         local Tween = TS:Create(Part, TweenInfo.new(distance / Speed, Enum.EasingStyle.Linear), {CFrame = waypoint.CFrame})
          Tween:Play()
          Tween.Completed:Wait()
      end
    if index == #Waypoints then
              break
          end
   end
break
end
Part:Destroy()
