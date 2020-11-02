local ReplicatedStorage = game:GetService("ReplicatedStorage")
local buttonEvent = ReplicatedStorage:FindFirstChild("buttonEvent")

function triggerButton(player,myVar)
	print("button pressed")
	print(myVar)
end

buttonEvent.OnServerEvent:Connect(triggerButton)
