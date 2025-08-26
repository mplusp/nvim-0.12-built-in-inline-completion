-- keymap
--------------------------------------------------------------------------------
local map = vim.keymap.set

-- Navigate visual lines
map({ 'n', 'x' }, 'j', 'gj', { desc = 'Navigate down (visual line)' })
map({ 'n', 'x' }, 'k', 'gk', { desc = 'Navigate up (visual line)' })
map({ 'n', 'x' }, '<Down>', 'gj', { desc = 'Navigate down (visual line)' })
map({ 'n', 'x' }, '<Up>', 'gk', { desc = 'Navigate up (visual line)' })
map('i', '<Down>', '<C-\\><C-o>gj', { desc = 'Navigate down (visual line)' })
map('i', '<Up>', '<C-\\><C-o>gk', { desc = 'Navigate up (visual line)' })

-- Move Lines
map('n', '<M-S-Up>', '<Cmd>move -2<CR>', { desc = 'Move line up' })
map('n', '<M-S-Down>', '<Cmd>move +1<CR>', { desc = 'Move line down' })
map('x', '<M-S-Up>', ":move '<-2<CR>gv", { desc = 'Move selection up' })
map('x', '<M-S-Down>', ":move '>+1<CR>gv", { desc = 'Move selection down' })
map('i', '<M-S-Up>', '<C-o><Cmd>move -2<CR>', { desc = 'Move line up' })
map('i', '<M-S-Down>', '<C-o><Cmd>move +1<CR>', { desc = 'Move line down' })

-- Easier interaction with the system clipboard
map({ 'n', 'x' }, '<Leader>y', '"+y', { desc = '[y]ank to system clipboard (+ register)' })
map({ 'n', 'x' }, '<Leader>p', '"+p', { desc = '[p]aste from system clipboard (+ register) after cursor' })
map({ 'n', 'x' }, '<Leader>P', '"+P', { desc = '[P]aste from system clipboard (+ register) before cursor' })

-- Navigating buffers
map('n', '<Leader>bb', '<C-^>', { desc = '[b]uffer: alternate [b]uffer' })
map('n', '<Leader>bn', '<Cmd>bnext<CR>', { desc = '[b]uffer: [n]ext' })
map('n', '<Leader>bp', '<Cmd>bprevious<CR>', { desc = '[b]uffer: [p]revious' })

-- Search highlighting
map('n', '<C-l>', '<Cmd>set hlsearch!<CR><C-l>', { desc = 'Toggle search highlighting and redraw screen' })
map('n', '<Esc>', '<Cmd>nohlsearch<CR>', { desc = 'Disable search highlighting' })

-- Toggle visible whitespace characters
map('n', '<Leader>tl', '<Cmd>set list!<CR>', { desc = '[t]oggle [l]istchars' })

-- Quickfix/Location List/Diagnostic keymaps
map('n', '<Leader>q', '<Cmd>copen<CR>', { desc = 'Open [q]uickfix list window' })
map('n', '<Leader>l', '<Cmd>lopen<CR>', { desc = 'Open [l]ocation list window' })
map('n', '<Leader>d', vim.diagnostic.setloclist, { desc = 'Open [d]iagnostic quickfix list' })

-- Quickly source current file / execute Lua code
map('n', '<Leader><Leader>x', '<Cmd>so<CR>', { desc = 'Source / e[x]ecute current file' })
map('n', '<Leader>x', '<Cmd>.lua<CR>', { desc = 'Lua: e[x]ecute current line' })
map('v', '<Leader>x', "<Cmd>'<,'>lua<CR>", { desc = 'Lua: e[x]ecute current selection' })
