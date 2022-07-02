---
to: <%= name %>/lua/<%= name %>.lua
---
local example_module = require("<%= name %>.example_module")

local M = {}

local function with_defaults(options)
  return {
    name = options.name or "Default Name"
  }
end

function M.setup(options)
  M.options = with_defaults(options)
end

--[[ Example public API function ]]
function M.greet()
  if M.options == nil then
    return
  end

  local greeting = example_module.greeting(M.options.name)
  print(greeting)
end

M.options = nil
return M
