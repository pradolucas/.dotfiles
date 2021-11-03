local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local langservers ={
  'pyright',
  'ccls',
}

for _, server in ipairs(langservers) do
  require'lspconfig'[server].setup{
    capabilities = capabilities
  }
end


