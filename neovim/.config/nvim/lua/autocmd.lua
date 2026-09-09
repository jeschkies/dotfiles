-- Format on save.
vim.api.nvim_create_autocmd("BufWritePre", {
    callback = function()
	vim.lsp.buf.format{async=false}
    end,
})


-- Show diagnostics on hover.
vim.api.nvim_create_autocmd("CursorHold", {
  buffer = bufnr,
  callback = function()
    local opts = {
      focusable = false,
      close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
      border = 'rounded',
      source = 'always',
      prefix = ' ',
      scope = 'cursor',
    }
    vim.diagnostic.open_float(nil, opts)
  end
})
