clear
echo ========================================================================
echo                  Kleer Agile Development virtual machine setup
echo ========================================================================

echo -e \n\n ==================================== Installing GIT ====================================
sudo apt-get -y install git

echo -e \n\n ==================================== Installing Curl ===================================
sudo apt-get -y install curl

echo -e \n\n ==================================== Installing RVM ====================================
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

echo -e \n\n ================================ Installing Latest Ruby ================================
source ~/.rvm/scripts/rvm
rvm install ruby

echo -e \n\n ================================ Installing Atom Editor ================================
sudo apt-get -y install software-properties-common
sudo add-apt-repository -y ppa:webupd8team/atom
sudo apt-get -y update
sudo apt-get -y install atom

echo -e \n\n ================================ Installing Jenkins ================================
cd ~
mkdir jenkins
cd jenkins
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Start
java -jar jenkins.war

# Install plugins
targetUrl=http://localhost:8080/
wget ${targetUrl}jnlpJars/jenkins-cli.jar
java -jar jenkins-cli.jar -s ${targetUrl} install-plugin subversion git github greenballs
java -jar jenkins-cli.jar -s ${targetUrl} restart

# Shutdown Jenkins
java -jar jenkins-cli.jar -s ${targetUrl} shutdown
cd ..

echo -e \n\n ================================ Creating CSD folders ================================
cd ~
mkdir CSD
cd CSD
