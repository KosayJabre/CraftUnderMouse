local function craft_under_mouse(event)
    local player = game.players[event.player_index]

    if player.selected then 
        if player.selected.name == "entity-ghost" then
            recipe_name = player.selected.ghost_name
        else
            recipe_name = player.selected.name
        end
    end

    pcall(player.begin_crafting, {count=1, recipe=recipe_name})
end



local function craft_multiple_under_mouse(event)
    local player = game.players[event.player_index]

    if player.selected then 
        if player.selected.name == "entity-ghost" then
            recipe_name = player.selected.ghost_name
        else
            recipe_name = player.selected.name
        end
    end

    pcall(player.begin_crafting, {count=settings.get_player_settings(event.player_index)["multiple-craft-number"].value, recipe=recipe_name})
end

script.on_event("craft-under-mouse", craft_under_mouse)
script.on_event("craft-multiple-under-mouse", craft_multiple_under_mouse)