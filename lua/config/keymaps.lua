vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {
  desc = "Toggle file explorer",
})

vim.keymap.set("n", "<leader>t", function()
  local terminal_buf = vim.fn.bufnr("NeovimTerminal")

  if terminal_buf == -1 or not vim.api.nvim_buf_is_valid(terminal_buf) then
    vim.cmd("belowright 12split | terminal")
    vim.api.nvim_buf_set_name(0, "NeovimTerminal")
    return
  end

  local terminal_win = vim.fn.bufwinid(terminal_buf)
  if terminal_win ~= -1 then
    vim.api.nvim_win_close(terminal_win, false)
  else
    vim.cmd("belowright 12split")
    vim.api.nvim_win_set_buf(0, terminal_buf)
  end
end, { desc = "Toggle terminal" })

vim.keymap.set("n", "<Tab>", ":bnext<CR>")
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>")

