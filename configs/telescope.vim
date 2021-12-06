lua << EOF
require('telescope').setup({
  defaults = {
    layout_config = {
      vertical = { width = 80 },
      vertical = { heigth = 0.9 },
      -- other layout configuration here
    },
    -- other defaults configuration here
  },
  pickers = {
    find_files = {
      theme = "dropdown",
    }
  },
  -- other configuration values here
})
EOF
