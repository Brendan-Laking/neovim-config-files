vim.g.mapleader = ","

vim.keymap.set('n', '<c-z>'     , '')
vim.keymap.set('n', '<c-Z>'     , '')
vim.keymap.set('n', '<Leader>f ', ':ls<CR>:b ')
vim.keymap.set('n', '<Leader>n ', ':noh<CR>')
vim.keymap.set('n', '<Leader>w ', ':wa<CR>')
vim.keymap.set('n', '<Leader>q ', ':qa<CR>')
vim.keymap.set('n', '<Leader>t ', ':b term<CR>')
vim.keymap.set('n', '<Leader>a ', ':Tabularize ')
vim.keymap.set('v', '<Leader>a ', ':Tabularize ')
vim.keymap.set('i', '<Up>'      , '')
vim.keymap.set('i', '<Down>'    , '')
vim.keymap.set('i', '<Left>'    , '')
vim.keymap.set('i', '<Right>'   , '')
vim.keymap.set('n', '<Up>'      , '<C-w>k')
vim.keymap.set('n', '<Down>'    , '<C-w>j')
vim.keymap.set('n', '<Left>'    , '<C-w>h')
vim.keymap.set('n', '<Right>'   , '<C-w>l')
vim.keymap.set('t', '<c-e>'     , '<c-\\><c-n>')

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
-- Goto buffer in position...
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
-- Pin/unpin buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)
-- Close buffer
map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
-- Wipeout buffer
--                 :BufferWipeout
-- Close commands
--                 :BufferCloseAllButCurrent
--                 :BufferCloseAllButPinned
--                 :BufferCloseAllButCurrentOrPinned
--                 :BufferCloseBuffersLeft
--                 :BufferCloseBuffersRight
-- Magic buffer-picking mode
map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
-- Sort automatically by...
map('n', '<Space>bb', '<Cmd>BufferOrderByBufferNumber<CR>', opts)
map('n', '<Space>bd', '<Cmd>BufferOrderByDirectory<CR>', opts)
map('n', '<Space>bl', '<Cmd>BufferOrderByLanguage<CR>', opts)
map('n', '<Space>bw', '<Cmd>BufferOrderByWindowNumber<CR>', opts)

-- Other:
-- :BarbarEnable - enables barbar (enabled by default)
-- :BarbarDisable - very bad command, should never be used
