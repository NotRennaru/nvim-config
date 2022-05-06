return {
  -- Packer.Nvim
  { "wbthomason/packer.nvim" },
  -- Make Neovim Good
  { "folke/tokyonight.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "jiangmiao/auto-pairs" },
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
  }
}
