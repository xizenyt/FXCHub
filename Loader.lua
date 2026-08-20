local placeId = game.PlaceId
local gameId = game.GameId

local games = {
    -- +1 Wall Hop Obby Escape
    [140462309938712] = "https://raw.githubusercontent.com/xizenyt/FXCHub/refs/heads/main/Games/%2B1WallHopObbyEscape.lua",
    
    -- +1 Speed Monkey Escape
    [114697347887839] = "https://raw.githubusercontent.com/xizenyt/FXCHub/refs/heads/main/Games/%2B1SpeedMonkeyEscape.lua"
}

local targetUrl = games[placeId] or games[gameId]

if targetUrl then
    print("[FXC Hub] Game detected! Loading script...")
    local success, err = pcall(function()
        loadstring(game:HttpGet(targetUrl))()
    end)
    if not success then
        warn("[FXC Hub] Failed to load script: " .. tostring(err))
    end
else
    warn("[FXC Hub] Unsupported Game ID: " .. tostring(placeId))
end
