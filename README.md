# chafa.nvim

View images in lua

## Prerequisites
- Install [chafa](https://github.com/hpjansson/chafa) and make sure it is in your path
- Neovim 0.7+

## Installation

```lua
use {
  "princejoogie/chafa.nvim",
  requires = {
    "nvim-lua/plenary.nvim"
    "m00qek/baleia.nvim"
  },
},
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
