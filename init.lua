require("core.options")
require("core.keymaps")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "plugins.neotree" },
	{ import = "plugins.colortheme" },
	{ import = "plugins.bufferline" },
	{ import = "plugins.lualine" },
	{ import = "plugins.treesitter" },
	{ import = "plugins.telescope" },
	{ import = "plugins.lsp" },
	{ import = "plugins.autocompletion" },
	{ import = "plugins.nano-ls" },
	{ import = "plugins.gitsigns" },
	{ import = "plugins.alpha" },
	{ import = "plugins.indent-blackline" },
	{ import = "plugins.misc" },
})
