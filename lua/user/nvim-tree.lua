local nvim_tree = require("nvim-tree")

nvim_tree.setup {
  git = {
			enable = true,
			ignore = false
	},
  open_on_setup = true,
  open_on_setup_file = true,
  open_on_tab = true,

  update_focused_file = {
	  enable = true,
	  update_cwd = true,
  },

  renderer = {
	add_trailing = true,
    root_folder_modifier = ":t",
    icons = {
      glyphs = {
        default = "",
        symlink = "",
        folder = {
          arrow_open = "",
          arrow_closed = "",
          default = "",
          open = "",
          empty = "",
          empty_open = "",
          symlink = "",
          symlink_open = "",
        },
        git = {
          unstaged = "",
          staged = "S",
          unmerged = "",
          renamed = "➜",
          untracked = "U",
          deleted = "",
          ignored = "◌",
        },
      },
    },
  },
  view = {
	  width = 70,
  },
}


function NvimTreeCloseIfLast()
  local only_one = vim.fn.tabpagenr("$") == 1 and vim.fn.winnr('$') == 1
  local is_visible = require('nvim-tree.view').is_visible()

  if only_one and is_visible then
    vim.cmd('quit')
  end
end

vim.cmd('autocmd BufEnter * lua NvimTreeCloseIfLast()')
