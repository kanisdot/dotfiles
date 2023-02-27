-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
-- lsp.preset('recommended');

lsp.preset({
	name = 'minimal',
	set_lsp_keymaps = {
		omit = {'gd', 'gD', 'gr', '<F4>', 'gl'},
	},
	manage_nvim_cmp = true,
	suggest_lsp_servers = false,
})

lsp.ensure_installed({
	'gopls',
	'rust_analyzer',
	'tsserver',
	'eslint',
})

lsp.on_attach(function(client, bufnr)
	require('lsp-format').on_attach(client)
	local opts = {buffer = bufnr}
	local bind = vim.keymap.set

	bind('n', '<leader>e', '<cmd>lua vim.diagnostic.open_float()<cr>', opts)
	bind('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
end)

lsp.setup_nvim_cmp({
	sources = {
		{name = 'nvim_lsp'},
		{name = 'buffer'},
		{name = 'luasnip'},
		{name = 'path'},
	}
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
})
