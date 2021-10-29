# clone this repo
INSTALL_PATH=/tmp/mini-dotfiles
if [ ! -d ${INSTALL_PATH} ]; then
    git clone https://github.com/TomoyaFujita2016/mini-dotfiles $INSTALL_PATH
fi

# backup
cp ${HOME}/.bashrc ${HOME}/.bashrc.org
cp ${HOME}/.bash_profile ${HOME}/.bash_profile.org

# cp dotfiles
cp ${INSTALL_PATH}/.bashrc ${HOME}/
cp ${INSTALL_PATH}/.bash_profile ${HOME}/
