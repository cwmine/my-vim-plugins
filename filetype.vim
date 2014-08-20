if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.gtdlog setfiletype gtdlog
augroup END
