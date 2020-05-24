:for f in split(globpath('~/.config/nvim/config', '*.vim'), '\n')
:	execute 'source' f
:endfor
