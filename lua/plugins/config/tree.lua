require("nvim-tree").setup {
  disable_netrw = true,
  hijack_netrw = true,
  open_on_setup = false,
  ignore_ft_on_setup = {},
  open_on_tab = false,
  hijack_cursor = false,
  update_cwd = false,
  diagnostics = {
      enable = true,
      icons = {hint = "", info = "", warning = "", error = ""}
  },
  update_focused_file = {enable = false, update_cwd = false, ignore_list = {}},
  view = {
    width = 30,
    side = 'left',
    hide_root_folder = true
  }
}
