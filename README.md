# Spacedork

[![MIT license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

#### <em> This was forked from https://github.com/pineapplegiant/spaceduck for some custom colors.</em>

# Colors Palette

## Base Colors

_Note: The Syntax color ID's are not an exhaustive & complete list._

| Palette      | Hex       | HSV/HSB       | RGB             | cterm/256 | SYN ID                                                     |
| ------------ | --------- | ------------- | --------------- | --------- | ---------------------------------------------------------- |
| Red          | `#e33400` | `14,100,89`   | `227, 52, 0`    | `166`     | Error, Ignore                                              |
| Orange       | `#e39400` | `39,100,89`   | `227, 148, 0`   | `172`     | Exception, Keyword, SpecialChar                            |
| Green        | `#5ccc96` | `151,55,80`   | `92, 204, 150`  | `78`      | Statement, Underlined, Function, Include, Conditonal       |
| Yellow       | `#f2ce00` | `51,100,95`   | `242, 206, 0`   | `220`     | Constant, Boolean, Character, Float, Number                |
| Purple       | `#b3a1e6` | `256,30,90`   | `179, 161, 230` | `146`     | PreProc, Special, Tag, Debug, StorageClass                 |
| Purple2      | `#7a5ccc` | `256,55,80`   | `122, 92, 204`  | `98`      | Title, Define, Macro, Define, Precondit, (Operator)        |
| Dark Purple  | `#30365F` | `232, 49, 37` | `48, 54, 95`    | `237`     | Comment, LineNR, MatchParen, EndOfBuffer, Pmenu, IncSearch |
| Dark Purple2 | `#686f9a` | `232,32,60`   | `104, 111, 154` | `60`      | Todo, PmenuSbar, Conceal, Search                           |
| Cyan         | `#00a3cc` | `192,100,80`  | `0, 163, 204`   | `38`      | Identifier, String, Structure, Typedef                     |
| Magenta      | `#ce6f8f` | `340,46,81`   | `206, 111, 143` | `168`     | Type, Delimeter, Operator                                  |

## Special Colors

| Palette          | Hex       | HSV/HSB       | RGB             | cterm/256 | SYN ID               |
| ---------------- | --------- | ------------- | --------------- | --------- | -------------------- |
| Background       | `#0f111b` | `230,44,11`   | `15, 17, 27`    | `233`     | Background           |
| Foreground       | `#ecf0c1` | `65,20,94`    | `236, 240, 193` | `255`     | Foregrond, Delimiter |
| Visual Selection | `#1b1c36` | `238, 50, 21` | `27, 28, 54`    | `234`     | Visual               |
| Cursor Line      | `#16172d` | `237,51,18`   | `22, 23, 45`    | `234`     | CursorLine           |

## Coloration Colors

| Palette    | Hex       | HSV/HSB     | RGB             | cterm/256 | SYN ID             |
|  ---------- | --------- | ----------- | --------------- | --------- | ------------------ |
|  Grey       | `#818596` | `229,14,59` | `129, 133, 150` | `102`     | Cursor, Tabline    |
|  Grey 2     | `#c1c3cc` | `229,5,80`  | `193, 195, 204` | `251`     | TabLineSel         |
|  Pure White | `#ffffff` | `0,0,100`   | `255, 255, 255` | `15`      | Search, Todo       |
|  Pure Black | `#000000` | `0,0,0`     | `0, 0, 0`       | `0`       | VertSplit, TabLine |

## Current Language Support

Basically languages I looked at with my eyes to make sure they didn't look like poop.

**Languages:**

_Note: if something looks off please submit an issue with a screenshot_

- C, C++, fortran, haskell, html, java, javascript, markdown, php, python, ruby, sql, LaTeX, typescript

**Plugins:**

- [Lightline](https://github.com/itchyny/lightline.vim),
  [Airline](https://github.com/vim-airline/vim-airline),
  [Vista](https://github.com/liuchengxu/vista.vim),
  [BarBar](https://github.com/romgrk/barbar.nvim),
  [Lualine](https://github.com/hoob3rt/lualine.nvim)

# Install

# Vim and Neovim
<em>I won't be testingin Neovim - Matt </em>

This repo hosts the Vim/Neovim color scheme.

Install the plugin with whatever plugin manager you use:

`Plug 'mpetricone/spacedork', { 'branch': 'main' }`

And add this to your vimrc/init.vim configuration file:

```viml
    if exists('+termguicolors')
      let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
      let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
      set termguicolors
    endif

   colorscheme spacedork
```

Or manually add the color theme to your 'runtimepath' for the file.

`:h colors`

### [Airline](https://github.com/vim-airline/vim-airline)

```viml
  let g:airline_theme = 'spacedork'
```

### [Lightline](https://github.com/itchyny/lightline.vim)

<em>No plans on testing or using lightline unless Airline becomes problematic. - Matt</em>

```viml
    let g:lightline = {
          \ 'colorscheme': 'spacedork',
          \ }
```

Don't be afraid of the vim documentation either for more information, like for manual installs!
`:h colorscheme`

### [Lualine](https://github.com/hoob3rt/lualine.nvim)
<em>No plans on testing lualine - Matt</em>

You only really need `'theme': 'spacedork'`, but this is what I have in my vimrc:

```viml
  let g:lualine = {
      \'options' : {
      \  'theme' : 'spacedork',
      \  'section_separators' : ['', ''],
      \  'component_separators' : ['', ''],
      \  'icons_enabled' : v:true,
      \},
      \'sections' : {
      \  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
      \  'lualine_b' : [ ['branch', {'icon': '',}, ], ],
      \  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
      \  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
      \  'lualine_y' : [ 'progress' ],
      \  'lualine_z' : [ 'location'  ],
      \},
      \'inactive_sections' : {
      \  'lualine_a' : [  ],
      \  'lualine_b' : [  ],
      \  'lualine_c' : [ 'filename' ],
      \  'lualine_x' : [ 'location' ],
      \  'lualine_y' : [  ],
      \  'lualine_z' : [  ],
      \},
      \'extensions' : [ 'fzf' ],
      \}

  lua require("lualine").setup()
```

## Tmux
<em>I probably won't be testing this. I use i3 when terminals are abundant. - Matt </em>

Checkout some tmux config inspiration here at [the terminal repo](https://github.com/pineapplegiant/spacedork-terminal/tree/main/tmux). Or if you're in a rush you can use this basic one:

```tmux
  # Basic color support setting
  set-option -g default-terminal "screen-256color"

  # Default bar color
  set-option -g status-style bg='#1b1c36',fg='#ecf0c1'

  # Active Pane
  set -g pane-active-border-style "fg=#5ccc96"

  # Inactive Pane
  set -g pane-border-style "fg=#686f9a"

  # Active window
  set-option -g window-status-current-style bg='#686f9a',fg='#ffffff'

  # Message
  set-option -g message-style bg='#686f9a',fg='#ecf0c1'
  set-option -g message-command-style bg='#686f9a',fg='#ecf0c1'

  # When Commands are run
  set -g message-style "fg=#0f111b,bg=#686f9a"
```

# Troubleshooting

## True color

Make sure you are using a terminal emulator that supports `truecolor`.

[Read more about truecolor support here](https://gist.github.com/XVilka/8346728).

## Colors don't look right

If you are running `vim` within `tmux`, you may run into some `truecolor` issues.

To fix, add this to you `tmux.conf`:

```tmux
    set -g terminal-overrides ',xterm-256color:Tc'
    set -g default-terminal "tmux-256color"
    set -as terminal-overrides ',xterm*:sitm=\E[3m'
```

And in your `.bash_profile or .zshrc`:

```bash
  export TERM="xterm-256color"
```

# Credits

- The original [spaceduck](https://github.com/pineapplegiant/spaceduck) - Thanks
- [Iceberg](https://cocopon.github.io/iceberg.vim/) - Gave me the blueprint for developing a [lovely colorscheme](https://speakerdeck.com/cocopon/creating-your-lovely-color-scheme).
- [Hallski's spacedust theme](https://github.com/hallski/spacedust-theme) - first theme to inspire me with space waaaay back when.
- [Rigel](https://github.com/Rigellute/rigel) - Showed me the ways of using Estilo to manage colors & that sexy themes can exist.
- Looking for other colorschemes? Check out [vim colors](http://vimcolors.com/) or [colorswat.ch](https://colorswat.ch/vim/)!

# Contribute

If you'd like to contribute please reach out! I don't know what I'm doing <em>(Doubly so in my case - Matt)</em>. Try to send a screenshot when posting issues as well.
If you port it to whatever you're using, send me a link so I can link it here!

## Vim Estilo

<em>I do not use estilo and probably won't test it to see if it still works. - Matt</em>

I currently use [estilo](https://github.com/jacoborus/estilo) to manage colors for Vim/Neovim, please install the dependencies to compile the colors specified in the YAML into the color scheme.

To find the [current syntax element under the cursor](https://vim.fandom.com/wiki/Identify_the_syntax_highlighting_group_used_at_the_cursor), I use this mapping which maps Ctrl+a to find the id under the cursor:

```viml
" Show syntax color highlighting groups for word under cursor
    nmap <c-a> :call <SID>SynStack()<CR>
    function! <SID>SynStack()
      if !exists("*synstack")
        return
      endif
      echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
    endfunction
```

This will show you the syntax ID to where we can then modify the color of that word.

### Testing colors look good

- To test that colors look good, you can run: `:source $VIMRUNTIME/syntax/hitest.vim` this will open a buffer of all color groups defined!
- Check current defined colors in buffer `:highlight` or `:hi` for short.
- Looking for more syntax elements? Check out `$VIMRUNTIME/syntax/` for all of vim's language support.

