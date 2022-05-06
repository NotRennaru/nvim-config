return {
  -- Packer.Nvim
  { "wbthomason/packer.nvim" },
  -- Make Neovim Look Good
  { "folke/tokyonight.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "jiangmiao/auto-pairs" },
  { 
    "kyazdani42/nvim-web-devicons", config = function()
      require("nvim-web-devicons").setup {}
    end
  }
}
