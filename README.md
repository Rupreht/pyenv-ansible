# MegaProject

##

## MacOS: pyenv

```sh
brew install pyenv pyenv-virtualenv

echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi'  >> ~/.zshrc

# Show available versions
pyenv install --list | grep " 3\.1[012]"
...
3.10.12
...
3.11.4

pyenv install -v 3.10.12 or
pyenv install -v 3.11.4
mkdir -p ~/work/ansible_playbooks && cd ~/work/ansible_playbooks
pyenv virtualenv 3.11.4 env_ansible2.12
cp ../Makefile .
make
```
