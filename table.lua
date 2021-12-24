-- 表
-- 表既是hash 也是数组
-- 可以通过. 也可以通过[]访问


-- 定义空表
a = {}

-- 初始化值
b = {n = 1,str = 'abc',100,'hello'}

a.n = b
a.str = 'abc'
a[2] = 100


-- 遍历表

for k,v in pairs(a) do 
  print(k,'=>',v)
end
