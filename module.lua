-- 模块
-- 导入模块
-- require 'asd'
logger = {
}


-- 定义一个常量
logger.PI = 3.14

function logger.info(str)
    io.write(str)
end



return logger