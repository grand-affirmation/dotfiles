return require('packer').startup(function()
	use 'wbthomason/packer.nvim' -- the plugin manager

	use 'lervag/vimtex' -- for LaTeX files and LaTeX compilation
	use 'SirVer/ultisnips' -- for on-the-run templates and snippets for faster typing
	use 'lukas-reineke/indent-blankline.nvim' -- adds line to signifies blocks beginning and ending
	use 'kyazdani42/nvim-web-devicons' -- icon support for other plugins
	use 'famiu/feline.nvim' -- beautiful statusline
	use 'nvim-lua/plenary.nvim' -- prerequisite for telescope
	use 'nvim-telescope/telescope.nvim' -- searches, finds files very very fast
	use 'norcalli/nvim-colorizer.lua' -- colorization of text and hex codes #FFFFFF
	use 'ixru/nvim-markdown' -- markdown formats and quality of life improvements
	--use 'navarasu/onedark.nvim' -- theme used
	use 'tiagovla/tokyodark.nvim'
	use 'neovim/nvim-lspconfig' -- handles language servers
	use 'hrsh7th/cmp-nvim-lsp' -- autocompletion
	use 'hrsh7th/cmp-path' -- autocompletion
	use 'hrsh7th/cmp-buffer' -- autocompletion
	use 'hrsh7th/nvim-cmp' -- autocompletion
	use 'quangnguyen30192/cmp-nvim-ultisnips' -- nvim-cmp, ultisnips support
	use 'simrat39/rust-tools.nvim' -- rust-analyzer features
end)
