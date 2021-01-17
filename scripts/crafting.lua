local function craft_under_mouse(event)
    local player = game.players[event.player_index]
    if player.selected then
        player.begin_crafting{count=1, recipe=player.selected.name, silent=false}
    end
end

script.on_event("craft-under-mouse", craft_under_mouse)
