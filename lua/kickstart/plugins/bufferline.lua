return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        offsets = {
          {
            filetype = 'neo-tree',
            text = 'File Explorer',
            hightlight = 'Directory',
            separator = true,
          },
        },
      },
    }
  end,
}
