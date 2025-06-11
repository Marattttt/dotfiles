-- Automatically set up LSP servers
local lspconfig = require("lspconfig")
local servers = require("mason-lspconfig").get_installed_servers()

for i, server_name in pairs(servers) do
  lspconfig[server_name].setup({})
end
