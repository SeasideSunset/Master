--Made by Riot / Falcon / Proxide

local api = {}

function api:findvehiclestatus(bool, callback)
	if bool == true then
		if game.Players.LocalPlayer.Character:FindFirstChild('InVehicle') then
			pcall(callback)
		end
else
		if not game.Players.LocalPlayer.Character:FindFirstChild('InVehicle') then
			pcall(callback)
		end
	end
end

function api:sendnotification(args1, args2)
	require(game:GetService("ReplicatedStorage").Game.Notification).new({
		Text = args1,
		Duration = args2
	})
end

function api:equipitem(args)
	local var
	for i,v in pairs(getgc(true)) do
		if typeof(v) == "table" and rawget(v, "i") and rawget(v, "Frame") and rawget(v, "Name") then
			if v.Name == args then
				var = v
			end
		end
	end
	require(game:GetService("ReplicatedStorage").Game.ItemSystem.ItemSystem).Equip(game:GetService("Players").LocalPlayer, var)
end

function api:firecircleaction(args)
	local UI = require(game:GetService("ReplicatedStorage").Module:WaitForChild("UI"));
	for i,v in pairs (UI.CircleAction.Specs) do
		if v.Name == args then
			v:Callback(v, true)
		end
	end
end

function api:spawnvehicle(args)
    for i, v in pairs(getgc(true)) do
        if type(v) == 'function' then
                if getfenv(v).script == game:GetService('ReplicatedStorage').Game.Garage.GarageUI then
                local con = getconstants(v)
                if table.find(con, 'Type') and table.find(con, 'Make') and table.find(con, 'FireServer') then
                    SpawnVehicle = v
                end
            end
        end
    end
    
    for i, v in pairs(require(game:GetService('ReplicatedStorage').Game.Garage.VehicleData)) do
        if v.Make == args then
            SpawnVehicle(v)
        end
    end
end

return api
