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
      "lua-language-server",
      "stylua",
    },
  },
  ["andweeb/presence.nvim"] = {
    config = function()
      require("presence"):setup {
        auto_update = true,
        neovim_image_text = "the only true text editor",
        main_image = "neovim",
        client_id = "793271441293967371",
        log_level = nil,
        debounce_timeout = 10,
        enable_line_number = false,
        blacklist = {},
        buttons = false,
        file_assets = {},
        editing_text = "Editing %s",
        file_explorer_text = "Browsing %s",
        git_commit_text = "Committing changes",
        plugin_manager_text = "Managing plugins",
        reading_text = "Reading %s",
        workspace_text = "Working on %s",
        line_number_text = "Line %s out of %s",
      }
    end,
  },
}
