return {
  'navarasu/onedark.nvim',
  config = function()
    require('onedark').setup {
      style = 'darker',
      transparent = true,
    }

    -- require('onedark').load()
    vim.cmd 'colorscheme onedark'
  end,
}
