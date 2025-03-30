return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('oil').setup {
      float = {
        max_width = 150, -- Adjust width as needed
        max_height = 40, -- Adjust height as needed
        padding = 0,
        border = 'rounded',
        win_options = {
          winblend = 0, -- change the value here
          winhighlight = 'Normal:OilFloat,FloatBorder:OilFloatBorder',
        },
      },
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-l>'] = false,
        ['<C-k>'] = false,
        ['<C-j>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      view_options = { show_hidden = true },
    }

    -- Open parent directory in current window
    vim.keymap.set('n', '-', '<CMD>Oil --float<CR>', { desc = 'Open parent directory' })

    -- Set transparent background for Oil floating window
    vim.api.nvim_set_hl(0, 'OilFloat', { bg = 'none' }) -- Makes the background transparent
    vim.api.nvim_set_hl(0, 'OilFloatBorder', { fg = 'white', bg = 'none' })
  end,
}
