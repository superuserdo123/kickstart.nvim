return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    lazy = false, -- or true if you want lazy load
    config = function()
      require('neo-tree').setup {
        filesystem = {
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
          },
        },
        window = {
          mappings = {
            ['<cr>'] = 'open',
            ['s'] = 'open_vsplit',
            ['S'] = 'open_split',
            ['t'] = 'open_tabnew',
            ['<bs>'] = 'navigate_up',
            ['.'] = 'set_root',
            ['/'] = 'fuzzy_finder',
          },
        },
      }

      -- optional toggle key
      vim.api.nvim_set_keymap('n', '<leader>e', '<Cmd>Neotree toggle<CR>', { noremap = true, silent = true })
    end,
  },
}
