return {
  {
    'mrjones2014/legendary.nvim',
    -- since legendary.nvim handles all your keymaps/commands,
    -- its recommended to load legendary.nvim before other plugins
    priority = 10000,
    lazy = false,
    -- sqlite is only needed if you want to use frecency sorting
    -- dependencies = { 'kkharji/sqlite.lua' }
    config = function ()
      require('legendary').setup({
        -- Initial keymaps to bind, can also be a function that returns the list
        keymaps = {},

        -- Initial commands to bind, can also be a function that returns the list
        commands = {},

        -- Initial augroups/autocmds to bind, can also be a function that returns the list
        autocmds = {},

        icons = {
          -- keymap items list the modes in which the keymap applies
          -- by default, you can show an icon instead by setting this to
          -- a non-nil icon
          keymap = nil,
          command = '',
          fn = '󰡱',
          itemgroup = '',
        },

        -- Include builtins by default, set to false to disable
        include_builtin = false,

        -- Include the commands that legendary.nvim creates itself
        -- in the legend by default, set to false to disable
        include_legendary_cmds = false,

        sort = {
          -- put most recently selected item first, this works
          -- both within global and item group lists
          most_recent_first = true,
          -- sort user-defined items before built-in items
          user_items_first = true,
          -- sort the specified item type before other item types,
          -- value must be one of: 'keymap', 'command', 'autocmd', 'group', nil
          item_type_bias = nil,
          -- settings for frecency sorting.
          -- https://en.wikipedia.org/wiki/Frecency
          -- Set `frecency = false` to disable.
          -- this feature requires sqlite.lua (https://github.com/kkharji/sqlite.lua)
          -- and will be automatically disabled if sqlite is not available.
          -- NOTE: THIS TAKES PRECEDENCE OVER OTHER SORT OPTIONS!
          frecency = {
            -- the directory to store the database in
            db_root = string.format('%s/legendary/', vim.fn.stdpath('data')),
            -- the maximum number of timestamps for a single item
            -- to store in the database
            max_timestamps = 10,
          },
        },

        extensions = {
          lazy_nvim = {
            -- Automatically register keymaps that are defined on lazy.nvim plugin specs
            -- using the `keys = {}` property.
            auto_register = true,
          },

          which_key = {
            -- Automatically add which-key tables to legendary
            -- see ./doc/WHICH_KEY.md for more details
            auto_register = false,
            -- you can put which-key.nvim tables here,
            -- or alternatively have them auto-register,
            -- see ./doc/WHICH_KEY.md
            mappings = {},
            opts = {},
            -- controls whether legendary.nvim actually binds they keymaps,
            -- or if you want to let which-key.nvim handle the bindings.
            -- if not passed, true by default
            do_binding = true,
            -- controls whether to use legendary.nvim item groups
            -- matching your which-key.nvim groups; if false, all keymaps
            -- are added at toplevel instead of in a group.
            use_groups = true,
          },
        },

        scratchpad = {
          -- How to open the scratchpad buffer,
          -- 'current' for current window, 'float'
          -- for floating window
          view = 'float',
          -- How to show the results of evaluated Lua code.
          -- 'print' for `print(result)`, 'float' for a floating window.
          results_view = 'float',
          -- Border style for floating windows related to the scratchpad
          float_border = 'rounded',
          -- Whether to restore scratchpad contents from a cache file
          keep_contents = true,
        },

        -- Directory used for caches
        cache_path = string.format('%s/legendary/', vim.fn.stdpath('cache')),

        -- Log level, one of 'trace', 'debug', 'info', 'warn', 'error', 'fatal'
        log_level = 'info',
      })
    end
  }
}
