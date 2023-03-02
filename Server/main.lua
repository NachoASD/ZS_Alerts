ESX = exports["es_extended"]:getSharedObject()

local tac = Config.Levels[1].value

RegisterCommand("zs_alerts", function(source)
    if(source == 0) then return end

    local xPlayer = ESX.GetPlayerFromId(source)
    
    if not xPlayer then return end

    if xPlayer.job.name == 'police' then
        TriggerClientEvent("zs_alerts:cl:menu", source)
    else
        xPlayer.showNotification(_U("not_job"))
    end
    
end, false)

-- Update the level to all clients
RegisterServerEvent('zs_alerts:sv:set_tac')
AddEventHandler('zs_alerts:sv:set_tac', function(r_tac)
    tac = r_tac
    TriggerClientEvent('zs_alerts:cl:set_tac', -1, tac)
end)

-- Event to return the level on connection
RegisterServerEvent("zs_alerts:sv:getAlert")
AddEventHandler('zs_alerts:sv:getAlert', function()
    TriggerClientEvent('zs_alerts:cl:set_tac', source, tac)
end)