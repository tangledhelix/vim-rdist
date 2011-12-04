
[Vim][] syntax highlighting for [Rdist][].

[vim]: http://www.vim.org/
[rdist]: http://www.magnicomp.com/products/rdist/rdist.shtml

To install the traditional way:

	git clone https://github.com/tangledhelix/vim-rdist.git
	cd vim-rdist
	for i in ftdetect ftplugin syntax ; do
		mkdir -p ~/.vim/$i
		cp $i/rdist.vim ~/.vim/$i
	done

If you use [Pathogen][]:

[pathogen]: https://github.com/tpope/vim-pathogen

	cd ~/.vim/bundle
	git clone https://github.com/tangledhelix/vim-rdist.git rdist

If the syntax is not autodetected, you can add an autocommand to `~/.vimrc`
for whatever filename(s) you use for Rdist files. It should auto-detect
`distfile` and `Distfile`.

	autocmd BufNewFile,BufRead distfile.local setfiletype rdist

