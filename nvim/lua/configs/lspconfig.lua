-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

local servers = {
  "bashls",
  "biome",
  "clangd",
  "cssls",
  "cssmodules_ls",
  "docker_compose_language_service",
  "dockerls",
  "gradle_ls",
  "groovyls",
  "html",
  "jqls",
  "jsonls",
  "lua_ls",
  "marksman",
  "mdx_analyzer",
  "nxls",
  "pyright",
  "rust_analyzer",
  "sqlls",
  "stylelint_lsp",
  "stylua3p_ls",
  "tailwindcss",
  "terraformls",
  "ts_ls",
  "yamlls",
}
local nvlsp = require "nvchad.configs.lspconfig"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end
