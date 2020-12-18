
" ------------- XXX COMMANDS-----------------
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!
command! Q execute('qa!')
command! PU PlugUpdate | PlugUpgrade
command! PI PlugInstall
command! Todo noautocmd silent! grep! 'TODO\|FIXME' | copen 12
