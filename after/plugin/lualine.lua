-- 
-- Lualine is the line you see at the top, that shows the mode, filename... etc
-- 


-- Bubbles config for lualine
-- Author: lokesh-krishna
-- MIT license, see LICENSE for more details.

-- stylua: ignore
local colors = {
  default   = '#2c3e50',
  blue   = '#2980b9',
  cyan   = '#79dac8',
  black  = '#0f111a',
  white  = '#c6c6c6',
  red    = '#ff5189',
  violet = '#d183e8',
  grey   = '#303030',
}

local theme = {
  normal = {
    a = { fg = colors.white, bg = colors.default },
    b = { fg = colors.blue, bg = colors.black, gui='italic,bold' },
    c = { fg = colors.white, bg = colors.black },
    x = { fg = colors.white, bg = colors.black },
    y = { fg = colors.white, bg = colors.black },
    z = { fg = colors.white, bg = colors.default },
  },

  insert = {
    a = { fg = colors.grey, bg = colors.violet },
    b = { fg = colors.blue, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
    x = { fg = colors.white, bg = colors.black },
    y = { fg = colors.white, bg = colors.black },
    z = { fg = colors.grey, bg = colors.violet },
  },

  visual = {
    a = { fg = colors.grey, bg = colors.cyan },
    b = { fg = colors.blue, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
    x = { fg = colors.white, bg = colors.black },
    y = { fg = colors.white, bg = colors.black },
    z = { fg = colors.grey, bg = colors.cyan },
  },

  command = {
    a = { fg = colors.grey, bg = colors.red },
    b = { fg = colors.blue, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
    x = { fg = colors.white, bg = colors.black },
    y = { fg = colors.white, bg = colors.black },
    z = { fg = colors.grey, bg = colors.red },
  },

  inactive = {
    a = { fg = colors.white, bg = colors.black },
    b = { fg = colors.white, bg = colors.black },
    c = { fg = colors.black, bg = colors.black },
    x = { fg = colors.white, bg = colors.black },
    y = { fg = colors.white, bg = colors.black },
    z = { fg = colors.white, bg = colors.red },
  },
}

require('lualine').setup {
  options = {
    theme = theme,
    icons_enabled = false,
    component_separators = '',
    section_separators = { left = '', right = '' },
  },
  sections = {},
  inactive_sections = {},
  tabline = {
    lualine_a = {
      { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = {'filename'},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {'branch', 'diff'},
    lualine_z = {'filetype', 'encoding'},
  },
  extensions = {},
}
