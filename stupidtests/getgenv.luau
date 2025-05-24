local function test()
    local blahblah = math.random()
    getgenv().aaaaaaaaaaaaaaaaa = blahblah
    return getgenv().aaaaaaaaaaaaaaaaa, aaaaaaaaaaaaaaaaa
end

local a, b = test()
local c, d = test()

print(a==b and c==d and "🟢 getgenv" or "🔴 getgenv")
