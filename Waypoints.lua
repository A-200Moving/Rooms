
if not workspace:FindFirstChild("Waypoints") then
   
local WF = Instance.new("Folder")
WF.Name = "Waypoints"
WF.Parent = workspace

local RoomDoor = Instance.new("Part")
RoomDoor.Anchored = true
RoomDoor.CanCollide = false
RoomDoor.Name = "CFrameDoor"
RoomDoor.CFrame = workspace.start.door.cFrame
RoomDoor.Parent = WF

for _,v in pairs(workspace:GetChildren()) do
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

	local RoomDoor = Instance.new("Part")
RoomDoor.Transparency = 1
RoomDoor.Anchored = true
RoomDoor.CanCollide = false
RoomDoor.Name = "CFrameDoor"
RoomDoor.CFrame = v.door.CFrame
RoomDoor.Parent = WF
	
	end
end

workspace.ChildAdded:Connect(function(v)
wait()
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

	local RoomDoor = Instance.new("Part")
RoomDoor.Transparency = 1
RoomDoor.Anchored = true
RoomDoor.CanCollide = false
RoomDoor.Name = "CFrameDoor"
RoomDoor.CFrame = v.door.CFrame
RoomDoor.Parent = WF
	
	end
end)
else
   return
end
