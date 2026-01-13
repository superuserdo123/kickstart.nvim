-- autopairs
-- https://github.com/windwp/nvim-autopairs

-- return {
--   'windwp/nvim-autopairs',
--   event = 'InsertEnter',
--   opts = {},
-- }
return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  config = function()
    require('nvim-autopairs').setup {
      check_ts = true,
      enable_check_bracket_line = false,
    }
  end,
}
