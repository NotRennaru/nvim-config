return {
  -- Packer.Nvim
  { "wbthomason/packer.nvim" },
  -- Make Neovim Good
  { "folke/tokyonight.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "jiangmiao/auto-pairs" },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require('plugins.config.treesitter')
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    config = function()
      require('lualine').setup {}
    end
  },
  -- Neovim Tree
  {
    "kyazdani42/nvim-web-devicons",
    config = function()
      require("nvim-web-devicons").setup {}
    end
  },
  {
    "kyazdani42/nvim-tree.lua",
    requires  = {
      "kyazdani42/nvim-web-devicons"
    },
    config = function()
      require("plugins.config.tree")
    end
  },
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    requires = {
      "nvim-lua/plenary.nvim"
    },
    config = function()
     require("plugins.config.telescope")
    end
  },
  -- Discord RPC
  {
    "andweeb/presence.nvim",
    config = function()
      require("presence"):setup({
        enable_line_number = true,
      })
    end
  },
  -- LSP
  {
    "neoclide/coc.nvim",
    branch = "release"
  }
}
