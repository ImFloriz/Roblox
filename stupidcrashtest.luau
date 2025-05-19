local NaN = 0/0

function test(f)
    if not f then return function() end end
    return function(...)
        local args = {...}
        pcall(function() return f(unpack(args)) end)
    end
end

test(debug and debug.getconstant)(function() end, NaN)
test(debug and debug.getconstant)(function() end, math.huge)
test(debug and debug.getconstant)(function() end, -math.huge)
test(debug and debug.getconstant)(function() end, 0.1)
test(debug and debug.getconstant)(function() end, NaN)
test(debug and debug.getconstant)(debug.info, 2)

test(debug and debug.getproto)(function() end, NaN)
test(debug and debug.getproto)(function() end, math.huge)
test(debug and debug.getproto)(function() end, -math.huge)
test(debug and debug.getproto)(function() end, 0.1)

test(debug and debug.getupvalue)(function() end, NaN)
test(debug and debug.getupvalue)(function() end, math.huge)
test(debug and debug.getupvalue)(function() end, -math.huge)
test(debug and debug.getupvalue)(function() end, 0.1)

test(debug and debug.getstack)(function() end, 0/0)

test(fireclickdetector)(game)
test(fireproximityprompt)(game)
test(firetouchinterest)(game, game, NaN)

test(sethiddenproperty)(game, "abcd", true)
test(setscriptable)(game, "abcd", true)
test(newcclosure and function()
    newcclosure(function() error("AAAAAAAAAAAAAAAAAA") end)()
end)()
test(listfiles)("\\\\.\\C:")

warn("epic exploit")
