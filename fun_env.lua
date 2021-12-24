-- 函数环境
-- 函数环境就是一个函数在运行时所能访问的“全局”变量的集合，装在一个表
-- 中。在缺省状态下，一个函数与定义它的函数共享同一个环境；

do
    -- 设置 函数环境
    local _ENV = {print = print, g = 100}
    function foo()
        print(g or "'g' is not defined.")
    end
    foo()
    
end