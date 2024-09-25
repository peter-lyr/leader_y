local F = require 'f'

require 'which-key'.register {
  ['<leader>y'] = { name = 'yank', },
  ['<leader>yf'] = { name = 'yank.file', },
  ['<leader>yff'] = { function() F.yank_clipbaord_file_full() end, 'yank_clipbaord_file_full', mode = { 'n', 'v', }, },
  ['<leader>yw'] = { function() F.yank_clipbaord_cwd() end, 'yank_clipbaord_cwd', mode = { 'n', 'v', }, },
}
