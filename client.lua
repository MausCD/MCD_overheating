local damage = 5
Citizen.CreateThread(function()
while true do
Citizen.Wait(1000)
local playerPed = PlayerPedId()
local vehicle = GetVehiclePedIsIn(playerPed, false)
local invehicle = 0
if(vehicle == 0) then
    invehicle = 0
else
    invehicle = 1
end
if(invehicle == 1) then
local vehtemp = GetVehicleEngineTemperature(vehicle)
local vehrpm = GetVehicleCurrentRpm(vehicle)
local vehenghel = 0
local vehenghel = GetVehicleEngineHealth(vehicle)
if(vehtemp >= 100) then
    if(vehenghel >= 10) then
        if(vehrpm >= 0.2002) then
    local newvehenghel = vehenghel -damage
        SetVehicleEngineHealth(vehicle, newvehenghel)
        end
    else
        SetVehicleEngineHealth(vehicle, 0)
    end
end
end
end
end)