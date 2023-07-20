-- Gives ability to toggle "keys" at end of line
require("chartoggle").setup({
	leader = "t", -- you can use any key as Leader
	keys = { ",", ";" }, -- Which keys will be toggle end of the line
})
