return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"leoluz/nvim-dap-go",
			"julianolf/nvim-dap-lldb",
			"rcarriga/nvim-dap-ui",
			"theHamsta/nvim-dap-virtual-text",
			"nvim-neotest/nvim-nio",
			"williamboman/mason.nvim",
		},
		config = function()
			local dap = require("dap")
			local ui = require("dapui")

			require("dapui").setup()
			require("dap-go").setup()
			require("dap-lldb").setup()

			require("nvim-dap-virtual-text").setup({})

			vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { desc = "[Debug] toggle breakpoint" })
			vim.keymap.set("n", "<leader>gb", dap.run_to_cursor)

			vim.keymap.set("n", "<leader>d?", function()
				require("dapui").eval(nil, { enter = true })
			end, { desc = "[Debug] eval under cursor" })

			vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "[Debug] continue" })
			vim.keymap.set("n", "<leader>dsi", dap.step_into, { desc = "[Debug] step into" })
			vim.keymap.set("n", "<leader>dsv", dap.step_over, { desc = "[Debug] step over" })
			vim.keymap.set("n", "<leader>dso", dap.step_out, { desc = "[Debug] step out" })
			vim.keymap.set("n", "<leader>dsb", dap.step_back, { desc = "[Debug] step back" })
			vim.keymap.set("n", "<leader>dr", dap.restart, { desc = "[Debug] restart" })

			dap.listeners.before.attach.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				ui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				ui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				ui.close()
			end
		end,
	},
}
