return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    -- add any options here
  },
  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    { "MunifTanjim/nui.nvim" },
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    {
      "rcarriga/nvim-notify",
      lazy = false,
      opts = {
        timeout = 1100,
        max_height = function()
          return math.floor(vim.o.lines * 0.75)
        end,
        max_width = function()
          return math.floor(vim.o.columns * 0.60)
        end,
        on_open = function(win)
          vim.api.nvim_win_set_config(win, { focusable = false })
        end,
        render = "minimal",
        stages = "fade_in_slide_out",
      },
      keys = {
        {
          "<Esc>",
          function()
            require("notify").dismiss()
          end,
          desc = "close notifications",
        }
      }
    }
  },
}
