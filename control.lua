require "utils"

script.on_event(defines.events.on_player_changed_position, function(event) PlayerMoved(event) end)

function PlayerMoved(event)
    local player = game.get_player(event.player_index)
    local player_pos = {x = round(player.position.x), y = round(player.position.y)}
    local player_tile = player.surface.get_tile(player_pos)
    player.print(string.format("Currently sitting on a %s.", player_tile.name))
end
