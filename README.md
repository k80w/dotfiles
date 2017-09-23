# dotfiles

Hey look it's all the config stuff for my computer! This is mostly here just so I can easily set things up when I need to, but maybe someone else is interested in looking at it too. In that case, howdy stranger! Sorry about the mess...

# Building

Copy the example settings file

```bash
cp settings.yml.example settings.yml
```

Tweak the settings as you see fit, then run

```bash
./build.sh
```

Now you can use Stow to install the packages you want

```bash
cd packages
stow -t ~ xorg urxvt i3 zsh polybar # It's very important that you use -t ~ to make sure they install to your home directory
```
