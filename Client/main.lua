ESX = exports["es_extended"]:getSharedObject()

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(playerData)
    TriggerServerEvent("zs_alerts:sv:getAlert")
end)

RegisterNetEvent('zs_alerts:cl:set_tac')
AddEventHandler('zs_alerts:cl:set_tac', function(tac)
    displayLogo(tac)
end)

function displayLogo (value)
    SendNUIMessage({
        image = value
    })
end

RegisterNetEvent('zs_alerts:cl:menu')
AddEventHandler('zs_alerts:cl:menu', function()
    ESX.UI.Menu.CloseAll()

    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'alerts', {
        title    = _U('menu_title'),
        align    = 'bottom-right',
        elements = Config.Levels
    }, function(data, menu)
        TriggerServerEvent("zs_alerts:sv:set_tac", data.current.value)
        menu.close()
    end, function(data, menu)
        menu.close()
    end)
end)