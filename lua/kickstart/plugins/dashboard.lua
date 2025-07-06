return {
  -- Alpha dashboard
  {
    'goolord/alpha-nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons',
      'maxmx03/ascii.nvim',
    },
    event = 'VimEnter',
    config = function()
      local alpha = require 'alpha'
      local dashboard = require 'alpha.themes.dashboard'
      local ascii = require 'ascii'

      -- Get a random piece of art from ascii.nvim
      -- local art = ascii.text.neovim.sharp
      local art = {
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
      }
      local twin = {
        [[⠀⠀⠀⠀⢀⣤⣴⠶⠶⠷⠶⠶⣦⣤⡀⠀⠀⠀⠀]],
        [[⠀⠀⢠⡶⠟⠉⠀⠀⠀⠀⠀⠀⠀⠉⠻⢶⡄⠀⠀]],
        [[⠀⣴⡟⣥⣤⣤⣤⣤⣤⣤⣤⣤⡀⠀⠀⠈⢻⣦⠀]],
        [[⢰⡟⠀⠻⠿⠿⠟⠁⣼⣿⣿⣿⣷⡀⠀⠀⠀⢻⡆]],
        [[⣿⠃⠀⠀⠀⠀⠀⣼⣿⡏⠙⣿⣿⣇⠀⠀⠀⠘⣿]],
        [[⣿⡄⠀⠀⠀⠀⣴⣿⠟⠃⠀⠙⣿⣿⡆⠀⠀⢠⣿]],
        [[⠹⣧⠀⠀⠀⢸⡟⠁⠀⠀⠀⠀⠘⢿⣷⡀⠀⣼⠏]],
        [[⠀⠻⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⠃⣴⠟⠀]],
        [[⠀⠀⠙⢷⣤⣀⠀⠀⠀⠀⠀⠀⠀⣀⣤⡾⠋⠀⠀]],
        [[⠀⠀⠀⠀⠈⠛⠻⠶⠶⠶⠶⠶⠟⠛⠁⠀⠀⠀⠀]],
      }

      -- dashboard.header expects a list of strings
      dashboard.section.header.val = art

      dashboard.section.buttons.val = {
        dashboard.button('f', '  Find file', ':Telescope find_files<CR>'),
        dashboard.button('n', '  New file', ':ene <BAR> startinsert <CR>'),
        dashboard.button('r', '  Recent files', ':Telescope oldfiles<CR>'),
        dashboard.button('g', '  Find text', ':Telescope live_grep<CR>'),
        dashboard.button('c', '  Config', ':e $MYVIMRC<CR>'),
        dashboard.button('q', '  Quit', ':qa<CR>'),
      }

      dashboard.section.footer.val = function()
        return '󰀶 Welcome to Neovim with ascii.nvim + alpha!'
      end

      alpha.setup(dashboard.config)
    end,
  },
}
