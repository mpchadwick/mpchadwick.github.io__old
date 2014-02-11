cyan='\e[0;36m'

# Update packages cache
echo -e "${cyan}======================"
echo -e "${cyan}Running apt-get update"
echo -e "${cyan}======================"
sudo apt-get update


# Jekyll
# Credit: http://dwradcliffe.com/2013/04/12/vagrant-to-compile-jekyll.html
echo -e "${cyan}======================"
echo -e "${cyan}Running sudo apt-get -y install build-essential"
echo -e "${cyan}======================"
sudo apt-get -y install build-essential 

echo -e "${cyan}======================"
echo -e "${cyan}Running sudo /opt/vagrant_ruby/bin/gem install jekyll rdiscount --no-ri --no-rdoc"
echo -e "${cyan}======================"
sudo /opt/vagrant_ruby/bin/gem install jekyll rdiscount --no-ri --no-rdoc


# Compass & Sass
echo -e "${cyan}======================"
echo -e "${cyan}Running sudo /opt/vagrant_ruby/bin/gem install compass"
echo -e "${cyan}======================"
sudo /opt/vagrant_ruby/bin/gem install compass


# Node
# Credit: https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager
# Note: build-essential installs g++ and make, I believe
echo -e "${cyan}======================"
echo -e "${cyan}Running sudo apt-get install -y python-software-properties python"
echo -e "${cyan}======================"
sudo apt-get install -y python-software-properties python

echo -e "${cyan}======================"
echo -e "${cyan}sudo add-apt-repository ppa:chris-lea/node.js"
echo -e "${cyan}======================"
sudo add-apt-repository ppa:chris-lea/node.js

echo -e "${cyan}======================"
echo -e "${cyan}sudo apt-get update"
echo -e "${cyan}======================"
sudo apt-get update

echo -e "${cyan}======================"
echo -e "${cyan}sudo apt-get -y install nodejs"
echo -e "${cyan}======================"
sudo apt-get -y install nodejs


# Grunt
echo -e "${cyan}======================"
echo -e "${cyan}sudo npm install -g grunt-cli"
echo -e "${cyan}======================"
sudo npm install -g grunt-cli