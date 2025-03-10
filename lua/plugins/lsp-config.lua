return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    opts = {
      auto_install = true,
    },
    config = function()
      require('mason-lspconfig').setup({
        -- A list of servers to automatically install
        ensure_installed = {
          'clangd',
          'pyright',
          'lua_ls',
          'bashls'
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    vim.keymap.set('n', '<leader>ld', ':LspStop<cr>'),
    vim.keymap.set('n', '<leader>le', ':LspStart<cr>'),
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.bashls.setup({
        capabilities = capabilities
      })
      -- vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      -- vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      -- vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      -- vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
