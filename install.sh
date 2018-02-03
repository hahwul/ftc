echo 'Install gem'
gem install clipboard
MYPWD=`pwd`
echo '#/usr/bin/ruby
ruby '$MYPWD'/ftc.rb $*' > /usr/bin/ftc
echo 'Set perm'
chmod 755 /usr/bin/ftc


