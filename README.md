
[Vim][] syntax highlighting for [Rdist][].

To install the traditional way:

	git clone https://github.com/tangledhelix/vim-rdist.git vim-rdist
	cp vim-rdist/syntax/rdist.vim ~/.vim/syntax/

If you use [Pathogen][]:

	cd ~/.vim/bundle
	git clone https://github.com/tangledhelix/vim-rdist.git rdist

If the syntax is not autodetected, you can add an autocommand to `~/.vimrc`
for whatever filename(s) you use for Rdist files.

	autocmd BufNewFile,BufRead Distfile set filetype=rdist

[vim]: http://www.vim.org/
[rdist]: http://www.magnicomp.com/products/rdist/rdist.shtml
[pathogen]: https://github.com/tpope/vim-pathogen

