-- Automatically set up LSP servers
local lspconfig = require("lspconfig")
require("mason-lspconfig").setup_handlers({
  function(server_name) -- Default handler for all servers
    lspconfig[server_name].setup({})
  end
})
