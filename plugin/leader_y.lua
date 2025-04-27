local F = require 'f'

require 'which-key'.register {
  ['<leader>y'] = { name = 'yank', },
  ['<leader>yf'] = { name = 'yank.file', },
  ['<leader>yr'] = { name = 'yank.file.relative', },
  ['<leader>yw'] = { name = 'yank.cwd', },
  ['<leader>yi'] = { name = 'yank.in', },
  ['<leader>ya'] = { name = 'yank.around', },

  ['<leader>yc'] = { function() F.system_copy { F.get_cur_file(), } end, 'system_copy cur_file', mode = { 'n', 'v', }, },
  ['<leader>yp'] = { function() F.system_paste(F.get_cur_file()) end, 'system_paste cur_dir', mode = { 'n', 'v', }, },
  ['<leader>yd'] = { function() F.copy_to_desktop() end, 'copy_to_desktop cur_file', mode = { 'n', 'v', }, },

  ['<leader>yff'] = { function() F.yank_clipbaord_file_full() end, 'yank_clipbaord_file_full', mode = { 'n', 'v', }, },
  ['<leader>yfh'] = { function() F.yank_clipbaord_file_full_head() end, 'yank_clipbaord_file_full_head', mode = { 'n', 'v', }, },
  ['<leader>yft'] = { function() F.yank_clipbaord_file_full_tail() end, 'yank_clipbaord_file_full_tail', mode = { 'n', 'v', }, },

  ['<leader>yrb'] = { function() F.yank_clipbaord_file_bufname() end, 'yank_clipbaord_file_bufname', mode = { 'n', 'v', }, },
  ['<leader>yrh'] = { function() F.yank_clipbaord_file_bufname_head() end, 'yank_clipbaord_file_bufname_head', mode = { 'n', 'v', }, },
  ['<leader>yrt'] = { function() F.yank_clipbaord_file_bufname_tail() end, 'yank_clipbaord_file_bufname_tail', mode = { 'n', 'v', }, },

  ['<leader>ywf'] = { function() F.yank_clipbaord_cwd() end, 'yank_clipbaord_cwd', mode = { 'n', 'v', }, },
  ['<leader>ywt'] = { function() F.yank_clipbaord_cwd_tail() end, 'yank_clipbaord_cwd_tail', mode = { 'n', 'v', }, },
  ['<leader>ywh'] = { function() F.yank_clipbaord_cwd_head() end, 'yank_clipbaord_cwd_head', mode = { 'n', 'v', }, },

  ['<leader>yip'] = { function() F.yank_clipbaord(F.get_paragraph()) end, 'yank_clipbaord_paragraph', mode = { 'n', 'v', }, },
  ['<leader>yap'] = { function() F.yank_clipbaord(F.get_paragraph()) end, 'yank_clipbaord_paragraph', mode = { 'n', 'v', }, },
}
