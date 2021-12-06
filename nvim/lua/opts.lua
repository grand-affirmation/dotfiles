require'nvim-web-devicons'.setup {
	-- your personnal icons can go here (to override)
	-- DevIcon will be appended to `name`
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			name = "Zsh"
		}
	};
	
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
	default = true;
}

require('feline').setup()

require('colorizer').setup()

local nvim_lsp = require'lspconfig'
nvim_lsp.texlab.setup{}
nvim_lsp.rust_analyzer.setup{}

local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {
            show_parameter_hints = false,
            parameter_hints_prefix = "",
            other_hints_prefix = "",
        },
    },

    --server = {
    --settings = {
    --["rust-analyzer"] = {
    --checkOnSave = {
    --command = "clippy"
    --},
    --}
    --}
    --},
}
require('rust-tools').setup(opts)

local cmp = require'cmp'
cmp.setup({
  -- Enable LSP snippets
  snippet = {
    expand = function(args)
        vim.fn["UltiSnips#Anon"](args.body)
    end,
  },
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<CR>'] = cmp.mapping.confirm({
      behavior = cmp.ConfirmBehavior.Insert,
      select = true,
    })
  },

  -- Installed sources
  sources = {
    { name = 'nvim_lsp' },
    { name = 'ultisnips' },
    { name = 'path' },
    { name = 'buffer' },
  },
})

require('nvim-autopairs').setup{}
