require('nvim-treesitter.configs').setup {
  exsure_installed = "python", "lua", "html", "css", "javascript",
  highlight = {
    enable = true,
    disable = { "gdresource", "hack", "gdscript", "fusion", "glimmer", "glsl" }
  },
  ignore_install = { "gdresource", "hack", "gdscript", "fusion", "glimmer", "glsl" }
}

require('nvim-treesitter.install').compilers = { "clang", "gcc" }
