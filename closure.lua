-- 闭包


-- upvalue
-- 一个函数所使用的定义在它的函数体之外的局部变量（external local variable）称为这个函数的upvalue。
-- 闭包
-- 一个函数和它的所有upvalue构成了一个函数闭包。函数闭包是Lua这一类“函数 式”语言的核心概念，建议读者结合示例和相应文档仔细体会。
function createCountdownTimer(second)
  local ms = second * 1000000;
  local function countDown()
    ms = ms -1 
    return ms
  end
  return countDown
end

timer = createCountdownTimer(1)
for i = 1, 100000 do 
  print(timer())
end

