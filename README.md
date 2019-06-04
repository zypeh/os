# OS
> For enlightenment use ArchLinux / Gentoo. For transcendence, make your own distro.

This is a repository served as my notes, dotfiles and distro related stuff. As I want to
implement my own package manager.

### 🤔 But it is empty ... ?
I tend to jot down my notes and thoughts on my blog, be patient and stay tuned.

### File structure
```
~ —— $HOME
  .config —— $XDG_CONFIG_HOME
  .shell.d —— shell scripts

```

### Installation
Just clone this repository and soft link these files to your `$HOME`.

```shell
git clone https://github.com/zypeh/os.git
ln -s ~/os/.bashrc .bashrc
```

If you want to add your own shell script, just put it under `$HOME/os/shell.d`.