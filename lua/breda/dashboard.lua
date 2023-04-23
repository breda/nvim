require('dashboard').setup({
  theme = 'doom',
  config = {
    header = {
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "           ▄ ▄                   ",
      "       ▄   ▄▄▄     ▄ ▄▄▄ ▄ ▄     ",
      "       █ ▄ █▄█ ▄▄▄ █ █▄█ █ █     ",
      "    ▄▄ █▄█▄▄▄█ █▄█▄█▄▄█▄▄█ █     ",
      "  ▄ █▄▄█ ▄ ▄▄ ▄█ ▄▄▄▄▄▄▄▄▄▄▄▄▄▄  ",
      "  █▄▄▄▄ ▄▄▄ █ ▄ ▄▄▄ ▄ ▄▄▄ ▄ ▄ █ ▄",
      "▄ █ █▄█ █▄█ █ █ █▄█ █ █▄█ ▄▄▄ █ █",
      "█▄█ ▄ █▄▄█▄▄█ █ ▄▄█ █ ▄ █ █▄█▄█ █",
      "    █▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄█ █▄█▄▄▄█    ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
      "                                 ",
    },
    center = {
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find File           ',
        desc_hl = 'String',
        key = 'SPC f f',
        keymap = '',
        key_hl = 'Number',
        action = ''
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Find Word           ',
        desc_hl = 'String',
        key = 'SPC f g',
        keymap = '',
        key_hl = 'Number',
        action = ''
      },
      {
        icon = ' ',
        icon_hl = 'Title',
        desc = 'Toggle Tree           ',
        desc_hl = 'String',
        key = 'SPC t t',
        keymap = '',
        key_hl = 'Number',
        action = ''
      },
    },
    footer = {}
  }
})
