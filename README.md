# dwm-theme-switcher


With this script you are able to change the theme
of dwm, neovim, dmenu, dunst and termite while running them.

The script is easy to extend for further programs
and multiple themes.

![demo](./demo.gif)


### Requirements

In order to use the script as it is you need the following
requirements installed on your machine

- dwm with reload patch
- feh
- neovim
- bash
- python3
- xdotool
- dmenu2*(Please notice that I used my dmenu2-fork, 
so this configuration won't work with the normal dmenu2)*
- termite
- dunst

### Installation

Clone this repo to `~/.themes` or to the direction you want it.


### Configuration

Edit the configuration-variables on the top of the `theme.sh`
that they match to your configuration.


### Usage

Go to the directory where you cloned this repository and execute

```
./theme.sh [theme]
```

`[theme]` need to match the name of a themes directory.


### Add new themes

Just add a new folder near to the both default themes and
edit or add the config files in the theme to your beliefs.
Take a care, that the names still match after your edit
the files!

```
Application - Name in theme dir - Default name
=========================================================
dmenu       - dmenu             - {no default}
dunst       - dunstrc           - ~/.config/dunstrc
dwm         - dwm               - $PATH/config.h
neovim      - vimrc             - ~/.vimrc
termite     - termite           - ~/.config/termite/config
wallpaper   - wallpaper.png     - {no default}
```


### License

MIT/X Consortium License

© 2017 Daniel Jankowski

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.

