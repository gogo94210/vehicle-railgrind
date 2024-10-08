require "utils"

script.on_event(defines.events.on_player_changed_position, function(event) PlayerMoved(event) end)



function PlayerMoved(event)
    local player = game.get_player(event.player_index)
    if (player.driving) then
        local car_orientation = player.vehicle.orientation

        local rails = player.surface.find_entities_filtered{position = player.position, name = {"straight-rail", "curved-rail"}}
        local rail_orientation = 0
        local rail_name = ""

        for k,v in pairs(rails) do
            rail_orientation = v.orientation
            rail_name = v.name
            -- player.print(string.format("This is a %s with an orientation of %s", v.name, v.orientation))
        end

        if (rail_name == "straight-rail") then
            player.vehicle.orientation = aligned_angle_straight(car_orientation, rail_orientation)
        end
    end


    -- interesting but gets the ground type, not the entity
    -- the round function is defined in the utils and I did this because the get_tile takes a TilePosition which is two ints and MapPosition is two doubles
    -- local player_pos = {x = round(player.position.x), y = round(player.position.y)}
    -- local player_tile = player.surface.get_tile(player_pos)
    -- player.print(string.format("Currently sitting on a %s.", player_tile.name))
end
