## Deprecated

> This repo was be replaced by [shirohana/environment](https://github.com/shirohana/environment/wiki/NeoVim).
>
> To see the **Vim** part: https://github.com/shirohana/environment/wiki/NeoVim

---

# Hana's vimrc repository

#### Step.1 Install [vim-plug][plug]

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### Step.2 Clone repo

```bash
git clone https://github.com/shirohana/vimrc && cd vimrc
```

#### Step.3 Create symbolic links

```bash
ln -s $(pwd)/{.vimrc,.vim,.tern-config} $HOME
```

#### Step.4 Install plugins

```bash
vim +PlugInstall
```

then `:qa` and that's it ก(ｰ̀ωｰ́ก)

[plug]: https://github.com/junegunn/vim-plug
