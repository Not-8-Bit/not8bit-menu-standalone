local headerShown = false
local sendData = nil

local function sortElements(data, skipfirst)
    if not data or #data < 2 then return data end
    local header = table.remove(data, 1)
    table.sort(data, function(a, b) return a.header < b.header end)
    if skipfirst then table.insert(data, 1, header) end
    return data
end

local function openMenu(data, sort, skipFirst)
    if not data or not next(data) then return end
    if sort then data = sortElements(data, skipFirst) end
	for _,v in pairs(data) do
		if v["icon"] then
			v["icon"] = v["icon"]
		end
	end
    SetNuiFocus(true, true)
    headerShown = false
    sendData = data
    SendNUIMessage({
        action = 'OPEN_MENU',
        data = table.clone(data)
    })
end

local function closeMenu()
    sendData = nil
    headerShown = false
    SetNuiFocus(false)
    SendNUIMessage({
        action = 'CLOSE_MENU'
    })
end

local function showHeader(data)
    if not data or not next(data) then return end
    headerShown = true
    sendData = data
    SendNUIMessage({
        action = 'SHOW_HEADER',
        data = table.clone(data)
    })
end

RegisterNetEvent('not8bit-menu:client:openMenu', function(data, sort, skipFirst)
    openMenu(data, sort, skipFirst)
end)

RegisterNetEvent('not8bit-menu:client:closeMenu', function()
    closeMenu()
end)

RegisterNUICallback('clickedButton', function(option, cb)
    if headerShown then headerShown = false end
    PlaySoundFrontend(-1, 'Highlight_Cancel', 'DLC_HEIST_PLANNING_BOARD_SOUNDS', 1)
    SetNuiFocus(false)
    if sendData then
        local data = sendData[tonumber(option)]
        sendData = nil
        if data then
            if data.params.event then
                if data.params.isServer then
                    TriggerServerEvent(data.params.event, data.params.args)
                elseif data.params.isCommand then
                    ExecuteCommand(data.params.event)
                else
                    TriggerEvent(data.params.event, data.params.args)
                end
            end
        end
    end
    cb('ok')
end)

RegisterNUICallback('closeMenu', function(_, cb)
    headerShown = false
    sendData = nil
    SetNuiFocus(false)
    cb('ok')
    TriggerEvent("not8bit-menu:client:menuClosed")
end)

-- Exports
exports('openMenu', openMenu)