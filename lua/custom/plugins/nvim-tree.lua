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
    vim.keymap.set('n', '<leader>fe', ':NvimTreeToggle<CR>', { desc = '[F]ile [E]xplorer (NvimTree)' })

    -- The following ensures that nvim tree works with session management
    vim.api.nvim_create_autocmd({ 'BufEnter' }, {
      pattern = 'NvimTree*',
      callback = function()
        local api = require 'nvim-tree.api'
        local view = require 'nvim-tree.view'

        if not view.is_visible() then
          api.tree.open()
        end
      end,
    })
  end,
}
