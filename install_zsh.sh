sudo apt install zsh

chsh -s /usr/bin/zsh

exit

gnome-terminal -e echo $SHELL

if [$SHELL = "/usr/bin/zsh"]
then 
    echo "Default shell environment succesfully changed"

else
    chsh -s $(which zsh)
    if [$SHELL = "/usr/bin/zsh"]
    then 
        echo "Default shell environment succesfully changed"
    else
        echo "Shell environment change has failed, new attempt..."
        echo "export SHELL=`which zsh` 
        [ -z "$ZSH_VERSION" ] && exec "$SHELL" -l" > .bash_profile

echo "ZSH is set, now installing oh my zsh..."

sudo apt install wget git

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc

source ~/.zshrc