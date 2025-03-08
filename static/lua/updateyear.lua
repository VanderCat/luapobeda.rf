local js = require "js"
local window = js.global
local document = window.document

local el = document:getElementById("year");
local year = tonumber(el.innerText);
print(el)
print(year)
window:setInterval(function()
    el.innerText = (window.Date.now()-773625600000)/1000/60/60/24/365
end, 10)