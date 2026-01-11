return {
  {
    "zbirenbaum/copilot.lua",
    event = "InsertEnter",
    opts = {
      suggestion = {
        enabled = true,
        auto_trigger = true,
        debounce = 75,
        keymap = {
          accept = "<C-l>", -- accept inline suggestion
          accept_word = false,
          accept_line = false,
          next = "<M-]>",
          prev = "<M-[>",
        }
      },
      panel = {
        enabled = true,
        auto_refresh = true,
        keymap = {
          open = "<M-\\>",
          accept = "<CR>",
          refresh = "r",
          close = "<Esc>"
        }
      }
    },
        config = function(_, opts)
      -- run the initial setup
      require("copilot").setup(opts)

      -- store current enabled state (true/false)
      vim.g.copilot_enabled = (opts and opts.suggestion and opts.suggestion.enabled) ~= false

      -- helper to (re)apply copilot setup with new enabled state
      local function apply_state(enabled)
        local new_opts = vim.deepcopy(opts or {})
        new_opts.suggestion = new_opts.suggestion or {}
        new_opts.suggestion.enabled = enabled
        -- reconfigure copilot with the updated enabled flag
        require("copilot").setup(new_opts)
      end

      -- toggle function
      local function toggle_copilot()
        vim.g.copilot_enabled = not vim.g.copilot_enabled
        apply_state(vim.g.copilot_enabled)
        vim.notify("Copilot " .. (vim.g.copilot_enabled and "enabled" or "disabled"), vim.log.levels.INFO)
      end

      -- Normal-mode mapping: <leader>cp to toggle Copilot inline suggestions
      vim.keymap.set("n", "<leader>cp", toggle_copilot, { desc = "Toggle Copilot inline suggestions" })
    end,
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
    config = function()
      -- registers the "copilot" source for nvim-cmp
      require("copilot_cmp").setup()
    end
  }
}
