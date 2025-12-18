vim.api.nvim_create_autocmd("LspAttach", {
	desc = "Lsp actions",
	callback = function(event)
		local map = function(keys, func, desc, mode)
			mode = mode or "n"

			vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
		end
		local telescope = require("telescope.builtin")

		map("gd", telescope.lsp_definitions, "[G]oto [D]efinition")

		map("gr", telescope.lsp_references, "[G]oto [R]eferences")

		map("gI", telescope.lsp_implementations, "[G]oto [I]mplementation")

		map("gD", telescope.lsp_type_definitions, "Type [D]efinition")

		map("gf", function()
			vim.lsp.buf.format({ async = true })
		end, "Format buffer")

		map("<leader>rn", vim.lsp.buf.rename, "[R]e[n]ame")

		map("<leader>ca", vim.lsp.buf.code_action, "[C]ode [A]ction", { "n", "x" })

		map("[d", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end, "diagnostic goto prev")

		map("]d", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end, "diagnostic goto next")
	end,
})

local capabilities = {
	textDocument = {
		foldingRange = {
			dynamicRegistration = false,
			lineFoldingOnly = true,
		},
	},
}

capabilities = require("blink.cmp").get_lsp_capabilities(capabilities)

vim.lsp.config("*", {
	capabilities = capabilities,
	root_markers = { ".git" },
})

local servers = {
	"pyright",
	"ruff",
	"jdtls",
	"luals",
	"clangd",
	"texlab",
}

vim.lsp.enable(servers)
