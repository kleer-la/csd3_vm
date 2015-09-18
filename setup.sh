# Install curl
sudo apt-get -y install curl

# Install RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

# Install latest Ruby
source ~/.rvm/scripts/rvm
rvm install ruby

# Install AtomEditor
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get -y update
sudo apt-get -y install atom
