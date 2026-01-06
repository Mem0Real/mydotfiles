return {
  "stevearc/oil.nvim",
  opts = {
    skip_confirm_for_simple_edits = true,

    float = {
      padding = 12,
      border = "rounded",
      win_options = {
        winblend = 0, -- transparency (0 = solid, 20–30 = translucent)
      },
    },

    preview_win = {
      disable_preview = function(_)
        return false
      end,
    },

	view_options = {
		show_hidden = true,

		is_hidden_file = function(name, buffer)
			local m = name:match("^%.")
			return m ~= nil
		end,
	},
  },
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
}

