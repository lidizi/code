

-- 函数 
-- function 定义 end结尾
-- 局部变量 local 声明,没有使用local 声明 即使在函数内部也是全局变量

function foo(a,b,c)
  local sum = a + b
  return sum,c -- 可以返回多个值
end


r1,r2 = foo(1,'123','hello')

print(r1,r2)



