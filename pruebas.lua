--[[
vim.keymap.set("n", "<leader>c", function()
    vim.cmd "write"
    os.execute("typst compile main.typ")
end)
--]]

---[[
vim.keymap.set("n", "<leader>c", function()
    vim.cmd "write"
    os.execute("make html")
end)
--]]
