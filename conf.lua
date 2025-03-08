settings = {
    socket = ":7777",
    threadcount = 1
}
package.cpath =package.cpath..";/usr/lib/lua/5.4/?.so"
package.path =package.path..";/usr/share/lua/5.4/?.lua;/usr/share/lua/5.4/?.lua"
local result, err = pcall( require, 'luarocks.loader' )
if not result then
    log.err(err)
end
