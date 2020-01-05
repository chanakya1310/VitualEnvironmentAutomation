wget https://repo.anaconda.com/archive/Anaconda3-2019.10-Linux-x86_64.sh
sh Anaconda3-2019.10-Linux-x86_64.sh
echo "Enter the path of anaconda installation. In the format /home/<user_name>/anaconda3"
echo -n ">>>"
read LOC
echo $LOC
sudo $LOC/bin/pip install virtualenv virtualenvwrapper
echo "export WORKON_HOME=\"\$HOME/.virtualenvs\"" >> $HOME/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=\"$LOC/bin/python\"" >> $HOME/.bashrc
echo "export PATH=\"$LOC/bin:\$PATH\"" >> $HOME/.bashrc
echo "source $LOC/bin/virtualenvwrapper.sh" >> $HOME/.bashrc
source ~/.bashrc
exec /bin/bash
echo "Done"