return {
  'mikavilpas/yazi.nvim',
  event = 'VeryLazy',
  dependencies = { 'folke/snacks.nvim', lazy = true },
  config = function()
    require('yazi').setup {
      floating_window = {
        border = 'rounded', -- "single", "double", "rounded", "solid"
        border_highlight = 'YaziBorder',
      },
    }

    -- Set border color to white
    vim.api.nvim_set_hl(0, 'YaziBorder', { fg = 'white', bg = 'none' })
    vim.api.nvim_set_hl(0, 'FloatBorder', { fg = 'white', bg = 'none' })

    -- Set yazi keymappings
    vim.keymap.set('n', '<leader>-', '<cmd>Yazi toggle<cr>', { desc = 'Toggle explorer' })
  end,
}
