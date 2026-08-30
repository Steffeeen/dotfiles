vim.opt.number = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- disable arrows in normal mode
vim.keymap.set('n', '<Up>', '<Nop>')
vim.keymap.set('n', '<Down>', '<Nop>')
vim.keymap.set('n', '<Left>', '<Nop>')
vim.keymap.set('n', '<Right>', '<Nop>')

-- disable arrows in insert mode
vim.keymap.set('i', '<Up>', '<Nop>')
vim.keymap.set('i', '<Down>', '<Nop>')
vim.keymap.set('i', '<Left>', '<Nop>')
vim.keymap.set('i', '<Right>', '<Nop>')

-- disable arrows in visual mode
vim.keymap.set('v', '<Up>', '<Nop>')
vim.keymap.set('v', '<Down>', '<Nop>')
vim.keymap.set('v', '<Left>', '<Nop>')
vim.keymap.set('v', '<Right>', '<Nop>')

vim.g.gitcommit_summary_length = 50

vim.api.nvim_create_autocmd("FileType", {
  pattern = "gitcommit",
  callback = function()
    -- Wrap commit-message body at 72 characters
    vim.opt_local.textwidth = 72

    -- Visual rulers at 72 columns
    vim.opt_local.colorcolumn = "72"

    vim.opt_local.spell = true

    -- Make wrapped text pleasant to edit
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
  end,
})

vim.opt.mouse = ""
