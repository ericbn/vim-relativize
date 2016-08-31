# relativize.vim

This plugin only shows relative line numbers when you need them: in the current window, and if you're not in insert mode. Otherwise, it will give you the absolute numbers. As suggested by http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

## Installation

Using [pathogen.vim](https://github.com/tpope/vim-pathogen):

    cd ~/.vim/bundle
    git clone git://github.com/ericbn/vim-relativize.git

Using [vim-plug](https://github.com/junegunn/vim-plug):

    Plug 'ericbn/vim-relativize'

## Configuration

If you temporarily only want to have the absolute numbers, you can disable/enable relative line numbers with `:RelativizeToggle`. To map a key (e.g. <kbd>F2</kbd>) to this command, add the following to your `.vimrc`:

    nnoremap <silent> <F2> :RelativizeToggle<CR>

To start with relative line numbers disabled, add this to your `.vimrc`:

    let g:relativize_enabled=0

## Why another 'relativenumber' plugin?

This is a no-nonsense plugin with only 32 lines of code. I believe this is how a plugin for such a simple feature should be.

If you want a plugin with more configuration options, try [numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle), [numbers.vim](https://github.com/myusuf3/numbers.vim),  [vim-relativity](https://github.com/kennykaye/vim-relativity), [vim-autonumber](https://github.com/foriequal0/vim-autonumber), [RelativeNumberCurrentWindow](https://github.com/vim-scripts/RelativeNumberCurrentWindow) or [smartnumber.vim](https://github.com/mopp/smartnumber.vim).

To have relative line numbering only in operator-pending mode, try [RelOps](https://github.com/vim-scripts/RelOps).

If you want an even simpler plugin, that will only switch between absolute and relative line numbers on a mapped key or lead shortcut, try [toggle-numbers.vim](https://github.com/fullybaked/toggle-numbers.vim) or
[vim-toggle-relative-line-numbers](https://github.com/gangleri/vim-toggle-relative-line-numbers).

## License

Copyright © Eric Nielsen. Distributed under the same terms as Vim itself.
See `:help license`.
