require "utils"

script.on_event(defines.events.on_player_changed_position, function(event) PlayerMoved(event) end)

function PlayerMoved(event)
    local player = game.get_player(event.player_index)
    local TilePos = {x = round(player.position.x), y = round(player.position.y)}
    player.print(TilePos)
end
