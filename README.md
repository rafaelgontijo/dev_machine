# Script configurar maquina de desenvolvimento

Baixe e rode o script build_dev_machine.sh com sudo:
```
wget -O dev_machine.zip https://github.com/rafaelgontijo/dev_machine/archive/master.zip
unzip dev_machine.zip
cd dev_machine-master
sudo ./build_dev_machine.sh
sudo usermod -aG docker $(whoami)
```

Caso vc queira mudar o shell para o zsh com oh-my-zsh:
```
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
