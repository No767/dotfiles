-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"
local nvlsp = require "nvchad.configs.lspconfig"

local servers = {
  "actionlint",
  "bash-language-server",
  "biome",
  "clang-format",
  "clangd",
  "cpptools",
  "cspell",
  "css-lsp",
  "cssmodules-language-server",
  "debugpy",
  "docker-compose-language-server",
  "editorconfig-checker",
  "gitleaks",
  "gradle-language-server",
  "groovy-language-server",
  "html-lsp",
  "htmlhint",
  "jq",
  "js-debug-adapter",
  "json-lsp",
  "kotlin-language-server",
  "lua-language-server",
  "markdownlint-cli2",
  "marksman",
  "mdx-analyzer",
  "nixpkgs-fmt",
  "nxls",
  "pyright",
  "rust-analyzer",
  "sonarlint-language-server",
  "sqlfluff",
  "sqlls",
  "stylelint",
  "stylelint-lsp",
  "stylua",
  "tailwindcss-language-server",
  "terraform-ls",
  "tree-sitter-cli",
  "typescript-language-server",
  "yaml-language-server",
  "yamlfmt",
  "yamllint",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
