# dotfiles

Hey look it's all the config stuff for my computer! This is mostly here just so I can easily set things up when I need to, but maybe someone else is interested in looking at it too. In that case, howdy stranger! Sorry about the mess...

# Installing

## Dependencies

To build and install the files, you'll need the following

- [Mustache](https://github.com/mustache/mustache) (Only tested on the ruby implementation, I don't expect it to fully work on any others)

## Find a theme

My dotfiles are based around base16 styling. You'll need to pick a base16 theme and [grap a yml file for it](https://github.com/base16-builder/base16-builder/tree/master/db/schemes). Download one and save it into the root directory of the dotfile repo, next to build.sh.

## Render the templates

To render the templates, run build.sh in a terminal and pass the theme you downloaded earlier as an argument. i.e. if you downloaded `atelier-cave.yml` you would run

```
./build.sh atelier-cave.yml
```

This will copy and render files from `templates` into `packages`.

## Let there be dotfiles!

Now all the files you need are located in `packages`! You can manually copy them if you want, but it's much easier to use [GNU Stow](https://www.gnu.org/software/stow) to manage them. If you have Stow, all you need to do to install a package is run the following command

```
stow -d packages -t ~ [package name]
```

`-d packages` tells stow to grab the package from `packages/` and `-t ~` tells stow to put them in your home directory.
