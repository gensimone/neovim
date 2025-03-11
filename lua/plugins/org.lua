return {
  {
    "nvim-neorg/neorg",
    lazy = false, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = "*", -- Pin Neorg to the latest stable release
    config = function ()
      require("neorg").setup({
        load = {
            -- Neorg comes with some default modules that will be automatically loaded if you require the core.defaults module:
            --   core.clipboard.code-blocks - Removes beginning whitespace from text copied from code blocks.
            --   core.esupports.hop - "Hop" between Neorg links, following them with a single keypress.
            --   core.esupports.indent - A set of instructions for Neovim to indent Neorg documents.
            --   core.esupports.metagen - A Neorg module for generating document metadata automatically.
            --   core.itero - Module designed to continue lists, headings and other iterables.
            --   core.journal - Easily track a journal within Neorg.
            --   core.keybinds - Module for managing keybindings with Neorg mode support.
            --   core.looking-glass - Allows for editing of code blocks within a separate buffer.
            --   core.pivot - Toggles the type of list currently under the cursor.
            --   core.promo - Promotes or demotes nestable items within Neorg files.
            --   core.qol.toc - Generates a table of contents for a given Norg buffer.
            --   core.qol.todo_items - Module for implementing todo lists.
            --   core.tangle - An Advanced Code Block Exporter.
            --   core.todo-introspector - Module for displaying progress of completed subtasks in the virtual line.
            --   core.ui.calendar - Opens an interactive calendar for date-related tasks.
            ["core.defaults"] = {},

            -- The concealer module converts verbose markup elements into beautified icons for your viewing pleasure.
            ["core.concealer"] = {},
        }
      })
    end
  }
}
