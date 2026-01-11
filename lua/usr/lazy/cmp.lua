return {
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-nvim-lsp",
      "L3MON4D3/LuaSnip",
      "zbirenbaum/copilot-cmp", -- optional: copilot as a cmp source
    },
    config = function()
-- actual cmp setup; a config-only module (not a lazy spec)
local M = {}

function M.setup()
  local ok, cmp = pcall(require, "cmp")
  if not ok then
    return
  end

  local luasnip_ok, luasnip = pcall(require, "luasnip")
  if not luasnip_ok then
    luasnip = nil
  end

  local copilot_suggestion
  do
    local ok_copilot, suggestion = pcall(require, "copilot.suggestion")
    if ok_copilot then copilot_suggestion = suggestion end
  end

  cmp.setup({
    completion = { completeopt = "menu,menuone,noinsert" },
    mapping = {
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        elseif copilot_suggestion and copilot_suggestion.is_visible() then
          copilot_suggestion.accept()
        elseif luasnip and luasnip.expand_or_jumpable() then
          luasnip.expand_or_jump()
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_prev_item()
        elseif luasnip and luasnip.jumpable(-1) then
          luasnip.jump(-1)
        else
          fallback()
        end
      end, { "i", "s" }),

      ["<CR>"] = cmp.mapping.confirm({ select = true }),

      ["<C-l>"] = cmp.mapping(function(fallback)
        if copilot_suggestion and copilot_suggestion.is_visible() then
          copilot_suggestion.accept()
        else
          fallback()
        end
      end, { "i", "s" }),
    },
    sources = cmp.config.sources({
      { name = "copilot" },     -- Copilot source (if installed)
      { name = "nvim_lsp" },
      { name = "luasnip" },
      { name = "buffer" },
      { name = "path" },
    }),
    snippet = {
      expand = function(args)
        if luasnip then luasnip.lsp_expand(args.body) end
      end,
    },
  })
end

-- run setup automatically when required from the spec's config
M.setup()

return M    end,
  },
}
