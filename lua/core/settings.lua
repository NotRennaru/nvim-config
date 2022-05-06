local Settings = {}

Settings.config = {
  -- Performance
  lazyredraw = true,
  shell = "zsh",
  shadafile = "NONE",
  -- Colors
  termguicolors = true,
  -- Indent
  smartindent = true,
  tabstop = 2,
  shiftwidth = 2,
  shiftround = true,
  expandtab = true,
  scrolloff = 3,
  -- Number
  number = true,
  relativenumber = true,
  -- Vim Info
  viminfo = "",
  viminfofile = "NONE",
  -- Mics
  clipboard = "unnamedplus",
  undofile = true,
  mouse = "a",
  cursorline = true,
  ignorecase = true,
  timeoutlen = 5,
  hidden = true,
  shortmess = "atI",
  wrap = false,
  backup = false,
  writebackup = false,
  errorbells = false,
  swapfile = false,
  showmode = false,
  laststatus = 3,
  pumheight = 6,
  -- splitright = true,
  -- splitbelow = true,
  -- completeopt = "menuone, noslect"
}

Settings.loadSettings = function()
  -- Config
  for i, v in pairs(Settings.config) do
    vim.opt[i] = v
  end

  -- Color Scheme
  vim.cmd[[colorscheme tokyonight]]
end

return Settings
