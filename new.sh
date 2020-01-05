echo "Enter the path of anaconda installation. In the format /home/<user_name>/anaconda3"
echo -n ">>>"
read LOC
sudo $LOC/bin/pip install virtualenv virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=$LOC/bin/python
export $PATH=$PATH:$LOC/bin/
source $LOC/bin/virtualenvwrapper.sh
source ~/.bashrc
exec /bin/bash
echo "Done"