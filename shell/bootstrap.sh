# Update packages cache
sudo apt-get update

# Jekyll
sudo apt-get -y install build-essential 
sudo /opt/vagrant_ruby/bin/gem install jekyll rdiscount --no-ri --no-rdoc

# Compass & Sass
sudo /opt/vagrant_ruby/bin/gem install compass

# Node
sudo apt-get install -y python-software-properties python g++ make
sudo add-apt-repository ppa:chris-lea/node.js
sudo apt-get update
sudo apt-get -y install nodejs

# Grunt
sudo npm install -g grunt-cli
