hi clear

if exists('syntax_on')
    syntax reset
endif

let g:colors_name='micro'

let g:micro_theme_statusline = get(g: , 'micro_theme_statusline', 0)
let g:micro_coc_status = get(g: , 'micro_coc_status', 0)

set background=dark

" colors ----------------------------------------------------------------------

hi Cursor         guibg=#c8c8c8 guifg=NONE    gui=NONE
hi Normal         guibg=#2d2d2d guifg=#dfdfdf gui=NONE
hi Title          guibg=NONE    guifg=#dfdfdf gui=BOLDUNDERLINE
hi Comment        guibg=NONE    guifg=#6f6f6f gui=NONE
hi SpecialComment guibg=NONE    guifg=BROWN   gui=NONE
hi Todo           guibg=NONE    guifg=BROWN   gui=UNDERLINE
hi Directory      guibg=NONE    guifg=#dfc56d gui=NONE
hi LineNR         guibg=NONE    guifg=#6f6f6f gui=NONE
hi CursorLineNr   guibg=NONE    guifg=BROWN   gui=NONE
hi ColorColumn    guibg=NONE    guifg=NONE    gui=NONE
hi SignColumn     guibg=NONE    guifg=NONE    gui=NONE
hi Underlined     guibg=NONE    guifg=NONE    gui=UNDERLINE
hi Visual         guibg=#2d2d2d guifg=#6f6f6f gui=REVERSE
hi VisualNOS      guibg=NONE    guifg=NONE    gui=UNDERLINE
hi MatchParen     guibg=NONE    guifg=#dfdfdf gui=BOLD
hi IncSearch      guibg=#dfc56d guifg=#2d2d2d gui=BOLD
hi Search         guibg=#dfc56d guifg=#2d2d2d gui=BOLD
hi CursorColumn   guibg=NONE    guifg=NONE    gui=NONE
hi CursorLine     guibg=#444444 guifg=NONE    gui=NONE
hi VertSplit      guibg=NONE    guifg=#dfdfdf gui=BOLD
hi WildMenu       guibg=NONE    guifg=#073642 gui=BOLDUNDERLINE
hi DiffAdd        guibg=NONE    guifg=#88c563 gui=NONE
hi DiffDelete     guibg=NONE    guifg=#e76d6d gui=NONE
hi DiffChange     guibg=NONE    guifg=#ecb534 gui=UNDERLINE
hi DiffText       guibg=NONE    guifg=#ecb534 gui=NONE
hi Pmenu          guibg=#444444 guifg=#dfdfdf gui=NONE
hi PmenuSel       guibg=#444444 guifg=#d75f87 gui=BOLD
hi PmenuSbar      guibg=#444444 guifg=#073642 gui=NONE
hi PmenuThumb     guibg=#d75f87 guifg=#dfdfdf gui=NONE
hi SpellBad       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellCap       guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi SpellLocal     guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi SpellRare      guibg=NONE    guifg=#edbabf gui=UNDERCURL
hi ErrorMsg       guibg=NONE    guifg=#dc322f gui=NONE
hi WarningMsg     guibg=NONE    guifg=#e76d6d gui=NONE
hi MoreMsg        guibg=NONE    guifg=#dc322f gui=NONE
hi Question       guibg=NONE    guifg=#dc322f gui=NONE
hi Error          guibg=NONE    guifg=#dc322f gui=REVERSE
hi Ignore         guibg=NONE    guifg=NONE    gui=NONE
hi EndOfBuffer    guibg=NONE    guifg=#2d2d2d gui=NONE
hi NonText        guibg=NONE    guifg=#dc322f gui=NONE
hi SpecialKey     guibg=NONE    guifg=#e76d6d gui=UNDERCURL
hi Statusline     guibg=NONE    guifg=#6f6f6f gui=UNDERLINE

" Clear & override ------------------------------------------------------------

hi clear Constant
hi clear Statement
hi clear Type
hi clear Function
hi clear PreProc
hi clear Special
hi clear Identifier

hi Constant guifg=#d75f87
hi Tag gui=UNDERLINE

" coc.nvim --------------------------------------------------------------------

hi CocErrorSign   guibg=NONE guifg=#e76d6d
hi CocWarningSign guibg=NONE guifg=#ff922b
hi CocInfoSign    guibg=NONE guifg=#fab005
hi CocHintSign    guibg=NONE guifg=#d75f87

" Help ------------------------------------------------------------------------

hi helpHyperTextJump gui=UNDERLINE

" Typescript ------------------------------------------------------------------

hi link typescriptParens Delimiter

" Vimscript -------------------------------------------------------------------

hi link vimUserFunc Function

" Statusline ------------------------------------------------------------------

if g:micro_theme_statusline==1
    set statusline=
    set statusline+=\ %{StatuslineMode()}
    set statusline+=%=
    if g:micro_coc_status==1
        set statusline+=%{coc#status()}\ 
    endif
    set statusline+=\ %t
    set statusline+=%m
    set statusline+=%r
    set laststatus=2

    function! StatuslineMode()
        let l:mode=mode()
        if l:mode==#"n"
            return "NORMAL"
        elseif l:mode==?"v"
            return "VISUAL"
        elseif l:mode==#"i"
            return "INSERT"
        elseif l:mode==#"R"
            return "REPLACE"
        elseif l:mode==?"s"
            return "SELECT"
        elseif l:mode==#"t"
            return "TERMINAL"
        elseif l:mode==#"c"
            return "COMMAND"
        elseif l:mode==#"!"
            return "SHELL"
        endif
    endfunction
endif
