---
to: <%= name %>/plugin/<%= name %>.lua
---
if vim.fn.has("nvim-0.7.0") == 0 then
  vim.api.nvim_err_writeln("<%= name %> requires at least nvim-0.7.0")
  return
end

-- make sure this file is loaded only once
if vim.g.loaded_<%= name %> == 1 then
  return
end
vim.g.loaded_<%= name %> = 1

-- create any global command that does not depend on user setup
-- usually it is better to define most commands/mappings in the setup function
-- Be careful to not overuse this file!
local <%= name %> = require("<%= name %>")

vim.api.nvim_create_user_command(
  "<%= name %>Greet",
  <%= name %>.generic_greet,
  {})

