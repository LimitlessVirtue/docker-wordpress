apt-get update  -y
apt-get install -y apt-utils
apt-get install -y libxml2-dev
#apt-get install -y sendmail
apt-get update  -y
apt-get install -y libxml2-dev
apt-get clean -y
docker-php-ext-install soap

curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
mv wp-cli.phar /usr/local/bin/wp
echo '# Adding Wordpress CLI Tab completions' >> ~/.bash_profile
echo 'source /opt/limitlessv/apps/wordpress-cli/wp-completion.bash' >> ~/.bash_profile

wp --info
