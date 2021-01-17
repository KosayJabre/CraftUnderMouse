data:extend {
    {
        type = 'custom-input',
        name = 'craft-under-mouse',
        key_sequence = 'ALT + Q'
    }
}

local function craft_under_mouse(event)
    local player = game.players[event.player_index]
    game.print("foo")
end

Event.register('craft-under-mouse', craft_under_mouse)
