return {
  'nvim-tree/nvim-tree.lua',
  lazy = false,
  config = function()
    require('nvim-tree').setup {
      filters = {
        dotfiles = false,
      },
      view = {
        adaptive_size = true,
      },
    }
    vim.keymap.set('n', '<leader>t', ':NvimTreeToggle<CR>', {})
  end,
}
