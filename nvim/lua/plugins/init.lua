return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "bash",
        "powershell",
        "csv",
        "dockerfile",
        "latex",
        "markdown",
        "markdown_inline",

        -- Development and utilities
        "editorconfig",
        "gitignore",
        "gitattributes",
        "jq",
        "json",
        "jsonc",
        "make",
        "nix",
        "hurl",
        "printf",
        "requirements",
        "terraform",
        "yaml",
        "xml",
        "toml",
        "vim",
        "vimdoc",
        

        -- Web
        "html",
        "css",
        "scss",

        -- Languages
        "javascript",
        "typescript",
        "python",
        "lua",
        "luadoc",
        "groovy",
        "java",
        "kotlin",
        "c",
        "cpp",
        "cmake",
        "rust",
        "sql",
        "svelte"
  		},
  	},
  }
}
