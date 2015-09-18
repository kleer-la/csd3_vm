clear
echo ========================================================================
echo                  Kleer Agile Development virtual machine setup
echo ========================================================================

echo \n\n ==================================== Installing GIT ====================================
sudo apt-get -y install git

echo \n\n ==================================== Installing Curl ===================================
sudo apt-get -y install curl

echo \n\n ==================================== Installing RVM ====================================
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

echo \n\n ================================ Installing Latest Ruby ================================
source ~/.rvm/scripts/rvm
rvm install ruby

echo \n\n ================================ Installing Atom Editor ================================
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get -y update
sudo apt-get -y install atom

echo \n\n ================================ Creating CSD folders ================================
cd ~
mkdir CSD
cd CSD
