:for f in split(globpath('config', '*.vim'), '\n')
:	execute 'source' f
:endfor
