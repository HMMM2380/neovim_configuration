return {
	"nvimdev/lspsaga.nvim",
	cmd = "Lspsaga",
	opts = {
		finder = {
			keys = {
				toggle_or_open = "<CR>",
			},
		},
	},

	keys = {
		{ "<leader>lr", ":Lspsaga rename<CR>" },
		{ "<leader>lc", ":Lspsaga code_action<CR>" },
		{ "<leader>ld", ":Lspsaga goto_definition<CR>" },
		{ "<leader>lh", ":Lspsaga hover_doc<CR>" },
		{ "<leader>lt", ":Lspsaga finder<CR>" },
		{ "<leader>ln", ":Lspsaga dianostic_jump_next<CR>" },
		{ "<leader>lp", ":Lspsaga dianostic_jump_prev<CR>" },
	},
}
