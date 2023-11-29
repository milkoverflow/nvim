return {
  'theprimeagen/harpoon',
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "[A]dd file to harpoon" })
    vim.keymap.set("n", "<C-h>", ui.toggle_quick_menu, { desc = "[H]arpoon menu" })

    vim.keymap.set("n", "<C-j>", function() ui.nav_file(1) end)
    vim.keymap.set("n", "<C-k>", function() ui.nav_file(2) end)
    vim.keymap.set("n", "<C-l>", function() ui.nav_file(3) end)
    vim.keymap.set("n", "<C-;>", function() ui.nav_file(4) end)
  end
}
