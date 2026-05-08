# Meu setup Neovim

## Arquivo de configuração Neovim

```bash
# Navegue ate a pasta .config
cd ~/.config

# Clone este repositorio
git clone git@github.com:raphaelramosds/my-neovim.git nvim
```

## Requisitos

```bash
sudo apt-get install ripgrp xclip
```

## Fonte

[Nerd Font](https://www.nerdfonts.com/font-downloads) é uma versão modificada de uma fonte comum, adicionando ícones a elas, os quais serão posteriormente interpretados por terminais e editores, como o Neovim.

### Cascadia Mono Nerd Font

1. Download da fonte

```bash
wget -O CascadiaMono.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/CascadiaMono.zip
```

2. Extraia o arquivo e instale a fonte na interface gráfica do seu sistema clicando duas vezes nos arquivos .ttf e selecionando Install.

**OBS:** Caso esteja no Linux, não é necessário instalar uma por uma, visto que basta copiar os arquivos .ttf para o diretório de fontes

```bash
# Copie os arquivos TTF
cp CascadiaMono/*.ttf /usr/share/fonts

# Atualizar cache de fonts
fc-cache -vr
```
