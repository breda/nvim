--
-- vim-test is our test runner
--

-- Nothing to configure for vim-test really
-- Except that I want to change where tests are ran

vim.g["test#strategy"] = {
	nearest = "neovim",
	latest = "neovim",
	file = "neovim",
	suite = "basic",
}
