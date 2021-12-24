function createFoo(name)
  local obj = {name = name}
  function obj:SetName(name) self.name = name end
  function obj:GetName() return self.name end
  return obj
end

o = createFoo("Andy")

print("name","=>",o:GetName())
