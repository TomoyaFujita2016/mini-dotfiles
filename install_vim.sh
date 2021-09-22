# clone this repo
INSTALL_PATH=/tmp/mini-dotfiles
if [ ! -d ${INSTALL_PATH} ]; then
    git clone https://github.com/TomoyaFujita2016/mini-dotfiles $INSTALL_PATH
fi

# backup
cp ${HOME}/.vimrc ${HOME}/.vimrc.org
cp -r ${HOME}/.vim ${HOME}/.vim.org

# cp dotfiles
cp ${INSTALL_PATH}/.vimrc ${HOME}/
cp -r ${INSTALL_PATH}/.vim ${HOME}/
