-- custom/plugins/init.lua

return {
  ["elkowar/yuck.vim"] = { ft = "yuck" },
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },
  ["edkolev/tmuxline.vim"] = {},
  ["NvChad/nvterm"] = {
    config = function()
      require "plugins.configs.nvterm"
    end,
  },
  ["goolord/alpha-nvim"] = {
    disable = false,
  },
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  ["williamboman/mason.nvim"] = {
    ensure_installed = {
      -- lua stuff
      "luau-lsp",
      "stylua",
    },
  },
  ["williamboman/mason-lspconfig.nvim"] = {},
}
