-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.background = "dark" -- or "light" for light mode

vim.api.nvim_exec(
  [[ 
    function! s:ZoomToggle() abort
      if exists('t:zoomed') && t:zoomed
        execute t:zoom_winrestcmd
        let t:zoomed = 0
      else
        let t:zoom_winrestcmd = winrestcmd()
        resize
        vertical resize
        let t:zoomed = 1
      endif
    endfunction
    command! ZoomToggle call s:ZoomToggle()
  ]],
  false
)

vim.cmd([[
  colorscheme oneDarkPro
  set listchars=eol:¬
  " hi NonText guibg=#eee
  nnoremap <silent><expr> ,h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
]])

local cmp = require("cmp")

cmp.setup({
  preselect = cmp.PreselectMode.None,
  completion = { completeopt = "menuone,noselect,preview" },
})
