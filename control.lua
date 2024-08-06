require "utils"

script.on_event(defines.events.on_player_changed_position, function(event) PlayerMoved(event) end)

function PlayerMoved(event)
    local player = game.get_player(event.player_index)
    local found = player.surface.find_entities_filtered{position = player.position}
    for k,v in pairs(found) do
        player.print(v.name)
    end
    -- player.print(string.format("Entity below me is a %s.", found))

    -- interesting but gets the ground type, not the entity
    -- the round function is defined in the utils and I did this because the get_tile takes a TilePosition which is two ints and MapPosition is two doubles
    -- local player_pos = {x = round(player.position.x), y = round(player.position.y)}
    -- local player_tile = player.surface.get_tile(player_pos)
    -- player.print(string.format("Currently sitting on a %s.", player_tile.name))
end
