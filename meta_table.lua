-- 元表
-- 元表本身只是一张普通的表，一般带有一些特殊的事件回调函数，通
-- 过 setmetatable被设置到某个对象上进而影响这个对象的行为。回调事件（如
-- __index和__add）由Lua定义，而事件回调函数由脚本用户定义并在相应事件发
-- 生时被Lua解释器调用。以前面的代码为例，表的加法运算在缺省状态下将产生
-- 异常，但是设置了适当元表的表就可以进行加法运算了——Lua解释器将在表做
-- 加法运算时调用用户定义的__add回调函数。

t = {}

t2 = {a = "and",b = "LiLei",c = "123"}
m = {__index = t2}

-- 设表m为表t的元表
setmetatable(t,m)
for k,v in pairs(t) do 
  print(k,v)
end

print("---")
print(t.b,t.a,t.c)

function add(t1,t2)
  local length = #t1
  for i = 1,length do 
    t1[i] = t1[i] + t2[i]
  end
  return t1
end


t1 = {1,2,3}
t2 = {10,20,30}

setmetatable(t1,{__add = add})
setmetatable(t2,{__add = add})

t1 = t1 + t2


for i = 1,#t1 do 
  print(t1[i])
end

