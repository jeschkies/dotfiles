require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "gopls", "rust_analyzer", "sumneko_lua" }
})

-- on attach function (for all servers)
local function on_attach(client)
    local status_ok, illuminate = pcall(require, "illuminate")
    if status_ok then
        illuminate.on_attach(client)
    end
end

-- Lua
require'lspconfig'.sumneko_lua.setup {
  on_attach = on_attach,
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

-- Rust
require'lspconfig'.rust_analyzer.setup{
  on_attach = on_attach
}

-- Go
require'lspconfig'.gopls.setup{
  on_attach = on_attach
}

-- Terraform
require'lspconfig'.terraformls.setup{
  on_attach = on_attach
}

-- JavaScript / Typescript
require'lspconfig'.eslint.setup{
  on_attach = on_attach
}
