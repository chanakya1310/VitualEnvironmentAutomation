if which python3 > /dev/null 2>&1;
then
    #Python is installed
	echo "Python3 found."
else
    #Python is not installed
    echo "PYTHON3 NOT FOUND. INSTALLING."
	sudo apt install python3 python3-pip
fi
LOC="$(which python3)"
LOC="${LOC%/python3}"
echo "$LOC"
sudo pip install virtualenv virtualenvwrapper jupyter
sudo pip install numpy scipy pandas matplotlib scikit-learn
echo "export WORKON_HOME=\"\$HOME/.virtualenvs\"" >> $HOME/.bashrc
echo "export VIRTUALENVWRAPPER_PYTHON=\"$LOC/python3\"" >> $HOME/.bashrc
echo "source $LOC/virtualenvwrapper.sh" >> $HOME/.bashrc
source ~/.bashrc
exec /bin/bash
echo "Done"