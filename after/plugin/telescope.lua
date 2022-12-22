local builtin = require('telescope.builtin')

vim.keymap.set('n', '<A-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>sf', builtin.git_files, {})
vim.keymap.set('n', '<leader>ss', function() 
	builtin.grep_string({ search = vim.fn.input("Grep: ") })
end)
