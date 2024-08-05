
local Part = Instance.new("Part", workspace)
Part.Name = "EntityWalkPart"
Part.Anchored = true
Part.Transparency = 1
Part.CanCollide = false
Part.CFrame = workspace.start.exit.CFrame

workspace.ChildAdded:Connect(function(room)
   if room.Name == "tall room" or 
      room.Name == "break room" or 
      room.Name == "room 1" or 
      room.Name == "room 2" or 
      room.Name == "room 3" or 
      room.Name == "room 4" or 
      room.Name == "room 5" or  
      room.Name == "box room" or 
      room.Name == "reference room" or 
      room.Name == "projector room" or 
      room.Name == "locker room" or 
      room.Name == "Storage" then
      Part.CFrame = room:WaitForChild("door").CFrame
   end
end)
