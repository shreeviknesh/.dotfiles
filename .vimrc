:for f in split(globpath('~/.vim/config', '*.vim'), '\n')
:	execute 'source' f
:endfor
