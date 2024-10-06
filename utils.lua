-- CONSTANTS

NORTH   = 0
NE      = 0.125
EAST    = 0.25
SE      = 0.375
SOUTH   = 0.5
SW      = 0.625
WEST    = 0.75
NW      = 0.875

-- https://stackoverflow.com/a/58411671
function round(num)
  return num + (2^52 + 2^51) - (2^52 + 2^51)
end

function approx(real, wanted, margin)
    real = (real * 1000) % 1000
    return 
end

function aligned_angle_straight(car_orientation, rail_orientation)
    if (rail_orientation == NORTH) then
        return 
    elseif (rail_orientation == NE) then
        return
    elseif (rail_orientation == EAST) then
        return
    else -- south east
        return
    end
end
