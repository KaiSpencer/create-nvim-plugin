---
to: <%= name %>/lua/<%= name %>/example_module.lua

---
local M = {}

function M.greeting(name)
  return "Hello, " .. name
end

return M
