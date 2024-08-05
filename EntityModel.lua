local Model = Instance.new("Model", workspace)
Model.Name = "A-60"
local Main = Instance.new("Part", Model)
Main.Name = "Main"
Main.Anchored = true
Main.CFrame = SpawnPart.CFrame
Main.Size = Vector3.new(5,5,5)
Main.Transparency = 1
local BillboardGui = Instance.new("BillboardGui",Main)
BillboardGui.Size = UDim2.new(8,0,8,0)
local Face = Instance.new("ImageLabel", BillboardGui)
Face.Size = UDim2.new(1,0,1,0)
Face.BackgroundTransparency = 1
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
end
