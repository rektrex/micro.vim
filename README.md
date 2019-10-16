# micro.vim
A minimal, dark colorscheme for vim on Truecolor terminals.

[screenshot](https://imgur.com/80Lyqw3)

# Usage
Add this to your `~/.vimrc` or equivalent:

```
if has('nvim') || has('termguicolors')
    set termguicolors
    colorscheme micro
endif
```

# Options
`g:micro_theme_statueline`: Set to 1 to use a minimal statusline which displays the current mode, buffer name, modified?, readonly?.

`g:micro_coc_status`: Set to 1 to show `coc#status` in the statusline. Requires `g:micro_theme_statueline` to be set to 1, and [coc.nvim](https://github.com/neoclide/coc.nvim) installed.
