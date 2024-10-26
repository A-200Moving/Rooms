
local Speed = 300




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

if workspace:FindFirstChild("Waypoints") then
   for _,v in pairs(workspace:FindFirstChild("Waypoints"):GetChildren()) do
   table.insert(Waypoints, v)
end
end

workspace.Waypoints.ChildAdded:Connect(function(v)
   table.insert(Waypoints, v)
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
