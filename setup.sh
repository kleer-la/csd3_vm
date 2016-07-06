clear
echo    =====================================================================
echo                  Kleer Agile Development virtual machine setup
echo    =====================================================================
echo
echo ========================== Installing GIT =================================
sudo apt-get -y install git

echo
echo ========================== Installing Curl ================================
sudo apt-get -y install curl

echo
echo ========================== Installing Java ================================
sudo apt-get -y install default-jre

echo
echo ========================= Installing FireFox ==============================
sudo apt-get -y install firefox

echo
echo =========================== Installing RVM ================================
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable

echo
echo ======================== Installing Latest Ruby ===========================
source ~/.rvm/scripts/rvm
rvm install ruby

echo
echo ==================== Installing Gedit 3 + Dev Plugins =====================
sudo apt-get -y install gedit-common/trusty
sudo apt-get -y install gedit/trusty
sudo apt-get -y install gedit-plugins/trusty

# echo
# echo ========================= Installing Atom Editor ==========================
# sudo apt-get -y install software-properties-common
# sudo add-apt-repository -y ppa:webupd8team/atom
# sudo apt-get -y update
# sudo apt-get -y install atom

echo
echo ========================== Installing Jenkins =============================
cd ~
mkdir jenkins
cd jenkins
wget http://mirrors.jenkins-ci.org/war/latest/jenkins.war

# Start
java -jar jenkins.war &

# Install plugins
# targetUrl=http://localhost:8080/
# wget ${targetUrl}jnlpJars/jenkins-cli.jar
# java -jar jenkins-cli.jar -s ${targetUrl} install-plugin git github greenballs
# java -jar jenkins-cli.jar -s ${targetUrl} restart
#
# # Shutdown Jenkins
# java -jar jenkins-cli.jar -s ${targetUrl} shutdown
# cd ..

echo
echo ======================== Creating CSD folders =============================
cd ~
mkdir csd
cd csd

echo
echo ===================== Cloning Ruby Sinatra Template========================
cd ~/csd
git clone https://github.com/kleer-la/template-ruby-sinatra.git template
