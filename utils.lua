-- https://stackoverflow.com/a/58411671
function round(num)
  return num + (2^52 + 2^51) - (2^52 + 2^51)
end
