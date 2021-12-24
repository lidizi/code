
require('module')

function enum(array)
    local index = 1
    return function()
        local ret = array[index]
        index = index + 1
        return ret
    end
end

function foreach(array,action)
    for elem in enum(array) do 
        action(elem)
    end
end

foreach({1,2,3},logger.info)