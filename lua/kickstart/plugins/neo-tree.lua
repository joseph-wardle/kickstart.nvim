-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    close_if_last_window = true,

    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = true,
        always_show = {
          '.gitignore',
        },
        never_show = {
          '.DS_Store',
          'thumbs.db',
        },
      },

      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
