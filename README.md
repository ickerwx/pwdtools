# pwdtools

few alias that will save you time if you work on Linux

# Install
```sh
$ git clone https://github.com/nongiach/pwdtools
$ echo "source ~/pwdtools/pwdtools.sh" >> ~/.bashrc
```

# How to use
When a new shell is started it will automatically go to your "current working directory",
     that you can define like that: (shorthand for set path)
```
$ sp
```

Go back to the starting path: (shorthand for load path)
```
$ lp
```

Create a shortcut:
```
$ cd your/path/ugly/and/hard/to/remember
$ sp shortcut
```

Load a shortcut
```
$ lp shortcut
```

For example you can create a shortcut to you favorite project sp favorite, wherever this project is you don't have to remember or go throught the pain of find/ cd //// it just lp favorite.

Delete a shortcut
```
$ dp shortcut
```

I tried several ways of implementing this and symbolic links sound like the best way to go.

If you are using i3 you can have a "current working directory" per workspace,
   this need jq to be installed (a command-line JSON procesor)
```
$ # define it (set path)
$ spw
$ # delete it
$ dpw
$ # load it
$ lpw
```

Tips:
you can: cp something ~/.pwd/favorite

use initials, your brain likes it, for example: mc => myconf, al => archlinux


### Todos

 -  ?

License
----

MIT

**Free Software, Hell Yeah! pay me a beer @chaign_c :) **

