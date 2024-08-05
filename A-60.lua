
local TS = game:GetService("TweenService")

local Speed = 500 -- 1 rps = 50 studs

-- TweenPart
if not workspace:FindFirstChild("CFrameDoor") then
    local RoomDoor = Instance.new("Part")
RoomDoor.Transparency = 1
RoomDoor.Anchored = true
RoomDoor.CanCollide = false
RoomDoor.CFrame = workspace.start.door.CFrame
RoomDoor.Name = "CFrameDoor"
RoomDoor.Parent = workspace

workspace.ChildAdded:Connect(function(v)
	if v.Name == "box room" or
    v.Name == "room2" or
	v.Name == "room1" or
	v.Name == "room3" or
	v.Name == "room4" or
    v.Name == "room5" or
	v.Name == "tall room" or
	v.Name == "break room" or
	v.Name == "locker room" or
    v.Name == "Storage" or
	v.Name == "reference_room" or
	v.Name == "projector room" or
	v.Name == "box room" then
	wait()

	RoomDoor.CFrame = v.door.CFrame
	
	end
end)
end

-- Entity Model
local Model = Instance.new("Model",workspace)
Model.Name = "A-60"
local Main = Instance.new("Part", Model)
Main.Name = "Main"
Main.Anchored = true
Main.CFrame = workspace.start.exit.CFrame
Main.Size = Vector3.new(5,5,5)
Main.Transparency = 1
local BillboardGui = Instance.new("BillboardGui",Main)
BillboardGui.Size = UDim2.new(8,0,8,0)
local Face = Instance.new("ImageLabel", BillboardGui)
Face.Size = UDim2.new(1,0,1,0)
Face.BackgroundTransparency = 1

local function Kill_fake_script()
   local script = Instance.new("LocalScript", Main)
   while wait() do
  local Player = game.Players.LocalPlayer
  local Character = Player.Character
  local Humanoid = Character:WaitForChild("Humanoid")
  local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")
  local Distance = (HumanoidRootPart.Position - Main.Position).Magnitude

  if Model and Humanoid.Health > 0 and Distance <= 20 and Character.safe.Value < 1 then
     Humanoid:TakeDamage(125)
  else
     
  end
end
end
coroutine.wrap(Kill_fake_script)()

local function FACE_fake_script()
  local script = Instance.new('LocalScript', Face)

  while true do
    script.Parent.Image = "rbxassetid://192267375"
    wait(0.1)
    script.Parent.Image = "rbxassetid://1972219027"
    wait(0.1)
    script.Parent.Image = "rbxassetid://1822114127"
    wait(0.1)
    script.Parent.Image = "rbxassetid://14084270847"
    wait(0.1)
    script.Parent.Image = "rbxassetid://3413871766"
    wait(0.1)
    script.Parent.Image = "rbxassetid://17865063"
    wait(0.1)
   end
end
coroutine.wrap(FACE_fake_script)()
local Light = Instance.new("PointLight",Main)
Light.Color = Color3.fromRGB(255,0,0)
Light.Brightness = 40
Light.Range = 20
Light.Shadows = true
local Sound = Instance.new("Sound",Main)
Sound.Name = "Static"
Sound.Looped = true
Sound.PlaybackSpeed = 2
Sound.Volume = 5
Sound.EmitterSize = 25
Sound.SoundId = "rbxassetid://4903742660"
Sound:Play()
local DistortionSoundEffect = Instance.new("DistortionSoundEffect", Sound)
DistortionSoundEffect.Level = 0.25
local PitchShiftSoundEffect = Instance.new("PitchShiftSoundEffect",Sound)
PitchShiftSoundEffect.Octave = 0.5

while wait() do
   if workspace:FindFirstChild("CFrameDoor") then
   local Distance = (Main.Position - workspace.CFrameDoor.Position).Magnitude
local timespeed = Distance / Speed
local Tween = TS:Create(Main, TweenInfo.new(timespeed, Enum.EasingStyle.Linear, Enum.EasingDirection.Out), {Position = workspace.CFrameDoor.Position})
Tween:Play()
if Distance <= 1 then
    break
end
end
end

Model:Destroy()
