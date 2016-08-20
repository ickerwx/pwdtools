# pwdtools

few alias that will save you time if you work on Linux

# Install
```sh
$ git clone https://github.com/nongiach/pwdtools
$ echo "source ~/pwdtools/pwdtools.sh" >> ~/.bashrc
```

# How to use
Set the path of the current directory of all starting shell:
```
$ sp
```

Go back to the starting path
```
$ lp
```

Create a shortcut:
```
$ cd your_path_ugly_and_hard_to_remember
$ sp shortcut
```

Load a shortcut
```
$ lp shortcut
```

For example you can create a shortcut to you favorite project sp favorite, wherever this project is you don't have to remember or go throught the pain of find/ cd //// it just lp favorite.

I tried several ways of implementing this and symbolic links sound like the best way to go.

Tips:
you can: cp something ~/.pwd/favorite
use initials, your brain likes it, for example: mc => myconf, al => archlinux


### Todos

 - Look for bugs

License
----

MIT

**Free Software, Hell Yeah! pay me a beer @chaign_c :) **

