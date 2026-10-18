function LspFormatter_off(lsp)
	vim.lsp.config(lsp, {
		on_attach = function(client)
			client.server_capabilities.documentFormattingProvider = false
			client.server_capabilities.documentRangeFormattingProvider = false
		end,
	})
end

return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = "VeryLazy",

	config = function()
		local rgt = require("mason-registry")

		local function install(name)
			local suc, package = pcall(rgt.get_package, name)
			if suc and not package:is_installed() then
				package:install()
			end
		end

		install("stylua")

		LspFormatter_off("clangd")
		LspFormatter_off("jsonls")

		local null_ls = require("null-ls")
		local btns = null_ls.builtins

		null_ls.setup({
			sources = {
				-- C/Cpp: clang-format
				btns.formatting.clang_format.with({
					extra_args = { "--style=file" },
				}),

				-- Cmake: gersemi
				btns.formatting.gersemi,

				-- Shell: shfmt
				btns.formatting.shfmt.with({
					extra_args = { "-i", "0", "-ci" },
				}),

				-- Lua: stylua
				btns.formatting.stylua,

				-- JSON: prettier
				btns.formatting.prettier.with({
					extra_args = {
						"--use-tabs",
						"--tab-width",
						"4",
					},
				}),
			},

			-- Auto formatting when saving
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
	end,

	keys = {
		{
			"<leader>lf",

			function()
				vim.lsp.buf.format({
					async = true,

					filter = function(client)
						return client.name ~= "clangd"
					end,
				})
			end,

			desc = "Format buffer",
		},
	},
}
