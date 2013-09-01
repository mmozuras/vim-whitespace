function! s:StripTrailingWhitespaces()
    " save last search and cursor position
    let previous_search = @/
    let previous_cursor_line = line('.')
    let previous_cursor_column = col('.')

    " strip trailing whitespace
    %s/\s\+$//e

    " restore previous search history and cursor position
    let @/ = previous_search
    call cursor(previous_cursor_line, previous_cursor_column)
endfunction

" strip trailing whitespace on buffer save
autocmd BufWritePre * :call s:StripTrailingWhitespaces()
