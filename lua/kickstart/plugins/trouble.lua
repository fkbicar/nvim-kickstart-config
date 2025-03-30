return {
  'folke/trouble.nvim',
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = 'Trouble',
  keys = {
    {
      '<leader>ot',
      '<cmd>Trouble diagnostics toggle<cr>',
      desc = '[O]pen [A]ll diagnostic messages',
    },
    {
      '<leader>ob',
      '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
      desc = '[O]pen [B]uffer diagnostics messages',
    },
    {
      '<leader>os',
      '<cmd>Trouble symbols toggle focus=false<cr>',
      desc = '[O]pen diagnostic [S]ymbols',
    },
    {
      '<leader>op',
      '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
      desc = '[O]pen [L]SP definitions / references / etc',
    },
    {
      '<leader>ol',
      '<cmd>Trouble loclist toggle<cr>',
      desc = '[O]pen [L]ocation list',
    },
    {
      '<leader>oq',
      '<cmd>Trouble qflist toggle<cr>',
      desc = '[O]pen [Q]uickfix list',
    },
  },
}
