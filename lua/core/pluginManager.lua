local pluginManager = {}

-- Imports
local fn = vim.fn

-- Install Packer.nvim<F12>
local status, msg = pcall(function()
    require("packer")
end)

if not status then
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  end
end

-- Load All Plugins
local packer = require('packer')
local plugins = require('plugins.plugins')

pluginManager.loadPlugins = function()
  return packer.startup(function(use)
    for _, v in pairs(plugins) do
      use(v)
    end
  end)
end

return pluginManager
