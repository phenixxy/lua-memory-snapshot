global1 =
{
	[1] = "item1",
	[2] = "item2",
	key1 = "value1",
	key2 = "value2",
}

global2 =
{
	g = global1,
	f = function()
		local s = "local value"
		return s;
	end,
}

local s = "local string"
local f1 = function()
    print(s)
end

local f2 = function(v)
	local t = v
	return function()
		print(t)
	end
end

local t1 = {}
local t2 = {}
t1.a = "aaa"
t1.b = t2
t2.g1 = global1
t2.g2 = global2

co = coroutine.create(function()
	local l1 = t1
	local l2 = t2
	local l3 = f2(l1.a)
    print("1")
	coroutine.yield()
    print("2")
	coroutine.yield()
    print("3")
end)

coroutine.resume(co)
coroutine.resume(co)
