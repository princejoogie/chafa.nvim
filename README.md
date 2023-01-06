# chafa.nvim

A neovim plugin for viewing images.

![demo](https://user-images.githubusercontent.com/47204120/211049752-7790771d-2f72-4c6c-94a0-9c0fefe650db.gif)

> This plugin uses [chafa](https://github.com/hpjansson/chafa) under the hood to convert images to an output that can be printed in a terminal. It then uses [baleia](https://github.com/m00qek/baleia.nvim) to colorize text with ANSI escape sequences

## Prerequisites

- Install [chafa](https://github.com/hpjansson/chafa) and make sure it is in your path
- Neovim 0.7+

## Installation

```lua
use {
  "princejoogie/chafa.nvim",
  requires = {
    "nvim-lua/plenary.nvim",
    "m00qek/baleia.nvim"
  },
}
```

## Setup

```lua
require("chafa").setup({
  render = {
    min_padding = 5,
    show_label = true,
  },
  events = {
    update_on_nvim_resize = true,
  },
})
```

## User Commands

This plugin creates a `ViewImage` user command which you can manually call in svg files to view them in a separate buffer.

![view_image_demo](https://user-images.githubusercontent.com/47204120/211049821-1913bd5a-e943-4857-9a71-7cec433925d3.gif)
