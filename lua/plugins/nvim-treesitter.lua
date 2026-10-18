return {
	"nvim-treesitter/nvim-treesitter",

	event = "VeryLazy",

	config = function()
		require("nvim-treesitter.config").setup({
			ensure_installed = {
				"c",
				"cpp",
				"lua",
				"python",
			},

			highlight = { enable = true },
			indent = { enable = true },
		})
	end,

}
