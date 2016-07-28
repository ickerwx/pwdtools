# pwdtools

few alias that will save you time if you work on linux

# Install
```sh
$ git clone https://github.com/nongiach/pwdtools
$ echo "source ~/pwdtools/pwdtools.sh" >> ~/.bashrc
```

# How to use
Set the path of the current directory of all starting shell:
```
$ spwd
```

Go back to the starting path
```
$ lpwd
```

Create a shortcut:
```
$ spwd shortcut
```

Load a shortcut
```
$ lpwd shortcut
```

For example you can create a shortcut to you favorite project spwd favorite, wherever this project is you don't have to remember or go throught the pain of find/ cd //// it just lpwd favorite.

I tried several ways of implementing this and symbolic links sound like the best way to go.

Tips: you can: cp something ~/.pwd/ln/favorite


### Todos

 - Look for bugs

License
----

MIT

**Free Software, Hell Yeah!**

