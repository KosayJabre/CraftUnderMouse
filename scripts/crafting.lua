local function craft_under_mouse(event)
    local player = game.players[event.player_index]
    if player.selected then
        pcall(player.begin_crafting, {count=1, recipe=player.selected.name, silent=false})
    end
end

local function craft_five_under_mouse(event)
    local player = game.players[event.player_index]
    if player.selected then
        pcall(player.begin_crafting, {count=5, recipe=player.selected.name, silent=false})
    end
end

script.on_event("craft-under-mouse", craft_under_mouse)
script.on_event("craft-5-under-mouse", craft_five_under_mouse)