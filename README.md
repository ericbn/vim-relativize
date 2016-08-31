## relativize.vim

This plugin only shows relative line numbers when you need them: in the current window, if you're not in insert mode. Otherwise, it will give you absolute line numbers. As suggested by http://jeffkreeftmeijer.com/2012/relative-line-numbers-in-vim-for-super-fast-movement/

### Installation

#### [pathogen.vim](https://github.com/tpope/vim-pathogen)

Run:

    cd ~/.vim/bundle
    git clone git://github.com/ericbn/vim-relativize.git

#### [vim-plug](https://github.com/junegunn/vim-plug)

Add the following to your `.vimrc` file:

    Plug 'ericbn/vim-relativize'

### Configuration

If you temporarily only want to have absolute numbers, you can disable/enable the plugin with `:RelativizeToggle`. To map a key (e.g. <kbd>F2</kbd>) to this command, add the following to your `.vimrc`:

    nnoremap <F2> :RelativizeToggle<CR>

To start with the plugin disabled, add this to your `.vimrc`:

    let g:relativize_enabled=0

### License

Copyright © Eric Nielsen. Distributed under the same terms as Vim itself.
See `:help license`.
