local F = require 'f'

require 'which-key'.register {
  ['<leader>y'] = { name = 'yank', },
  ['<leader>yf'] = { name = 'yank.file', },
  ['<leader>yr'] = { name = 'yank.file.relative', },
  ['<leader>yff'] = { function() F.yank_clipbaord_file_full() end, 'yank_clipbaord_file_full', mode = { 'n', 'v', }, },
  ['<leader>yfh'] = { function() F.yank_clipbaord_file_full_head() end, 'yank_clipbaord_file_full_head', mode = { 'n', 'v', }, },
  ['<leader>yft'] = { function() F.yank_clipbaord_file_full_tail() end, 'yank_clipbaord_file_full_tail', mode = { 'n', 'v', }, },
  ['<leader>yrb'] = { function() F.yank_clipbaord_file_bufname() end, 'yank_clipbaord_file_bufname', mode = { 'n', 'v', }, },
  ['<leader>yrh'] = { function() F.yank_clipbaord_file_bufname_head() end, 'yank_clipbaord_file_bufname_head', mode = { 'n', 'v', }, },
  ['<leader>yrt'] = { function() F.yank_clipbaord_file_bufname_tail() end, 'yank_clipbaord_file_bufname_tail', mode = { 'n', 'v', }, },
  ['<leader>yw'] = { function() F.yank_clipbaord_cwd() end, 'yank_clipbaord_cwd', mode = { 'n', 'v', }, },
}
