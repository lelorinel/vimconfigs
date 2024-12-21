local map = vim.keymap.set
local nomap = vim.keymap.del

local Snacks = require('snacks')

-- Lazygit 
if vim.fn.executable('lazygit') == 1 then
    map("n", "<leader>gg", function()
        Snacks.lazygit({
            cwd = vim.fn.expand('%:p:h')
        })
    end, {
        desc = "Lazygit (Root Dir)"
    })
    map("n", "<leader>gG", function()
        Snacks.lazygit()
    end, {
        desc = "Lazygit (cwd)"
    })
    map("n", "<leader>gf", function()
        Snacks.lazygit.log_file()
    end, {
        desc = "Lazygit Current File History"
    })
    map("n", "<leader>gl", function()
        Snacks.lazygit.log({
            cwd = vim.fn.exapand('%:p:h')
        })
    end, {
        desc = "Lazygit Log"
    })
    map("n", "<leader>gL", function()
        Snacks.lazygit.log()
    end, {
        desc = "Lazygit Log (cwd)"
    })
end

map('n', '<leader>z', function()
  Snacks.zen()
end)

map('n', '<c-/>', function()
  local cd = vim.fn.expand('%:p:h')
  Snacks.terminal('pwsh.exe', {
   cwd = cd
  })
end)
