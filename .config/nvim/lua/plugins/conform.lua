return {
	{
		"stevearc/conform.nvim",
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				-- Conform will run multiple formatters sequentially
				python = { "isort", "black" },
				-- You can customize some of the format options for the filetype (:help conform.format)
				rust = { "rustfmt", lsp_format = "fallback" },
				-- Conform will run the first available formatter
				javascript = { "prettierd", "prettier", stop_after_first = true },
				javascriptreact = { "biome", "biome-organize-imports" },
				typescript = { "biome", "biome-organize-imports" },
				typescriptreact = { "biome", "biome-organize-imports" },
			},
		},
		-- config = function()
		-- 	require("conform").setup({
		-- 		formatters_by_ft = {
		-- 			lua = { "stylua" },
		-- 			-- Conform will run multiple formatters sequentially
		-- 			python = { "isort", "black" },
		-- 			-- You can customize some of the format options for the filetype (:help conform.format)
		-- 			rust = { "rustfmt", lsp_format = "fallback" },
		-- 			-- Conform will run the first available formatter
		-- 			javascript = { "prettierd", "prettier", stop_after_first = true },
		-- 			javascriptreact = { "biome", "biome-organize-imports" },
		-- 			typescript = { "biome", "biome-organize-imports" },
		-- 			typescriptreact = { "biome", "biome-organize-imports" },
		-- 		},
		-- 	})
		-- end,
		cmd = { "ConformInfo" },
		keys = {
			{
				"<S-M-f>",
				function()
					require("conform").format({ lsp_format = "fallback" })
				end,
				desc = "Open explorer",
				mode = { "n", "i" },
			},
		},
	},
}
