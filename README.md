# relativize.vim

This plugin only shows relative line numbers when you need them: in the current window, and if you're not in insert mode. Otherwise, it will give you the absolute numbers. As suggested by http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

## Installation

- Using [pathogen.vim](https://github.com/tpope/vim-pathogen):

        cd ~/.vim/bundle
        git clone git://github.com/ericbn/vim-relativize.git

- Using [vim-plug](https://github.com/junegunn/vim-plug):

        Plug 'ericbn/vim-relativize'

## Configuration

Add one of the following to your `.vimrc` depending on the initial look you want:

- Relative line numbers when you need them (recommended):

        set relativenumber

- Absolute line numbers all the time (toggle to relative numbers when you need them with `:RelativizeToggle`):

        set number

- No numbers at all (use the map bellow to switch numbers from appearing, will first switch to relative line numbers):

  (nothing)

You can enable/disable relative line numbers with `:RelativizeToggle`. To map a key (e.g. <kbd>F2</kbd>) to this command, add the following to your `.vimrc`:

    nnoremap <silent> <F2> :RelativizeToggle<CR>

To map a key (e.g. <kbd>F3</kbd>) to switch the numbers from appearing or not at all, add this to your `.vimrc`:

    nnoremap <silent> <F3> :exec "set" g:relativize_enabled ? "relativenumber!" : "number!"<CR>

## Why another 'relativenumber' plugin?

This is a no-nonsense plugin with only 29 lines of code. I believe this is how a plugin for such a simple feature should be.

If you want a plugin with more configuration options, try [numbertoggle](https://github.com/jeffkreeftmeijer/vim-numbertoggle), [numbers.vim](https://github.com/myusuf3/numbers.vim),  [vim-relativity](https://github.com/kennykaye/vim-relativity), [vim-autonumber](https://github.com/foriequal0/vim-autonumber), [RelativeNumberCurrentWindow](https://github.com/vim-scripts/RelativeNumberCurrentWindow) or [smartnumber.vim](https://github.com/mopp/smartnumber.vim).

To have relative line numbering only in operator-pending mode, try [RelOps](https://github.com/vim-scripts/RelOps).

If you want an even simpler plugin, that will only switch between absolute and relative line numbers on a mapped key or lead shortcut, try [toggle-numbers.vim](https://github.com/fullybaked/toggle-numbers.vim) or
[vim-toggle-relative-line-numbers](https://github.com/gangleri/vim-toggle-relative-line-numbers).

## License

Copyright © Eric Nielsen. Distributed under the same terms as Vim itself.
See `:help license`.
