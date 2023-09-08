# Pyenv for ansible

## Deployment this project (example)

```sh
mkdir -p ~/work && cd ~/work
git clone https://github.com/Rupreht/pyenv-ansible.git
cd pyenv-ansible
```

## Install pyenv

### MacOS

```sh
brew install pyenv pyenv-virtualenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi'  >> ~/.zshrc
```

### Linux

(checked: Ubuntu 22.04.3 LTS)

```sh
sudo apt install -y \
  make \
  buile-essential \
  libssl-dev \
  zlib1g-dev \
  libbz2-dev \
  libreadline-dev \
  libsqlite3-dev \
  wget \
  curl \
  llvm \
  libncurses5-dev \
  libncursesw5-dev \
  xz-utils \
  tk-dev \
  liblzma-dev && \
curl https://pyenv.run | bash
```

## Config env

```sh
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(pyenv init -)"' >> ~/.profile
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.profile
source ~/.profile
```

## Install Python

```sh
# Show available a latest version 3.8.x
pyenv install --list | grep " 3\.8" | sort -Vr | head -n 1

pyenv install -v 3.8.18
pyenv virtualenv 3.8.18 env_ansible2.12
```

[For more info, visit:](https://github.com/pyenv/pyenv-installer)

## Install Ansible

clone project & go to workdir

exec `pyenv local env_ansible2.12`

```sh
make -f ~/work/pyenv-ansible/Makefile
```
