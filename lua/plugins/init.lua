return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "williamboman/mason.nvim",
    opts = require("configs.mason")
    -- opts = {
    --   ensure_installed = {
    --     "black",
    --     "mypy",
    --     "pyright",
    --     -- "ruff-lsp",
    --     -- "debugpy",
    --   },
    -- },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
  	"nvim-treesitter/nvim-treesitter",
    opts = require("configs.treesitter")
  	-- opts = {
  	-- 	ensure_installed = {
  	-- 		"vim", "lua", "vimdoc",
  	--     "html", "css", "python"
  	-- 	},
  	-- },
  },
}
