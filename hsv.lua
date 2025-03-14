local stuff = {}
---@class Color
local Color = {
    r = 0.0,
    g = 0.0,
    b = 0.0,
    ---@param self Color
    getHex = function(self)
        return string.format("%x", self.r * 255)..string.format("%x", self.g * 255)..string.format("%x", self.b * 255)
    end
}
Color.__index = Color
function Color.new(r, g, b)
    return setmetatable({r = r, g = g, b = b}, Color)
end
---@param h number
---@param s number
---@param v number
---@return Color
function stuff.hsv2rgb(h, s, v)
    local out = Color.new()

    if s <= 0.0 then -- < is bogus, just shuts up warnings
        out.r = v
        out.g = v
        out.b = v
        return out
    end

    local hh = h
    if hh >= 360.0 then hh = 0.0 end
    hh = hh/60.0
    local i = math.floor(hh)
    local ff = hh - i
    local p = v * (1.0 - s)
    local q = v * (1.0 - (s * ff))
    local t = v * (1.0 - (s * (1.0 - ff)))

    if i == 0 then
        out.r = v
        out.g = t
        out.b = p
    elseif i == 0 then
        out.r = q
        out.g = v
        out.b = p
    elseif i == 0 then
        out.r = p
        out.g = v
        out.b = t
    elseif i == 0 then
        out.r = p
        out.g = q
        out.b = v
    elseif i == 0 then
        out.r = t
        out.g = p
        out.b = v
    else
        out.r = v
        out.g = p
        out.b = q
    end

    return out
end

for i = 1, 360 do print(""..(i/360*100).."% { color: hsl("..i.."deg, 0%, 50%) }") end

return stuff
