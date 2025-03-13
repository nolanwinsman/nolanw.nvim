return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		config = function()
			local keymap = vim.keymap
			local builtin = require("telescope.builtin")

			-- keymaps
			keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
			keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
			keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
			keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
