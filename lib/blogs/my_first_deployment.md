My First Deployment

set up the EC2 instance.

install apache:
`sudo yum install httpd`

start the server: 
`sudo service httpd start`


taken from this site
http://www.postgresql.org/download/linux/redhat/

install postgres:
`sudo yum install postgresql-server`

post-install:
`sudo service postgresql initdb`
`chkconfig postgresql on`

start the server:


set the password:
first open the server with `psql`
then execute `ALTER USER Postgres WITH PASSWORD '<newpassword>'`

can't find postgres so I'm gonna just use homebrew, it's familiar

need to install gcc, got instructions from here
https://github.com/Homebrew/linuxbrew/wiki/Standalone-Installation


Warning: /home/ec2-user/.linuxbrew/bin is not in your PATH.

over and over again things on linuxbrew were failing! 
this got postgres to work at least
http://www.bitsandpix.com/entry/amazon-ec2-installing-postgres-93-on-amazon-linux-instance-local-storage/


To jump into the db console first
may first need to 
`sudo su` to become the superuser
then
` su - postgres`
then
`psql`



Now we try for apache
`sudo yum install httpd` to install

to get it started
`sudo service httpd start`


_____________________________________________________
These are instructions very specific to Red Hat Linux


sudo yum update

sudo yum install curl git

To install EPEL, open terminal and type in:
sudo rpm -Uvh http://nginx.org/packages/centos/7/noarch/RPMS/nginx-release-centos-7-0.el7.ngx.noarch.rpm


To install nginx, open terminal and type in:
sudo yum install nginx


start nginx
sudo service nginx start

## as root
`sudo -i`

install nano
`yum install nano`

## this next bit is pretty much all from [here](http://www.if-not-true-then-false.com/2012/install-postgresql-on-fedora-centos-red-hat-rhel/)

Add exclude to /etc/yum/pluginconf.d/rhnplugin.conf file [main] section:
```
[main]
...
exclude=postgresql*
```

1.3 Install PostgreSQL 9.3 Repository
```
rpm -Uvh http://yum.postgresql.org/9.3/redhat/rhel-7-x86_64/pgdg-redhat93-9.3-1.noarch.rpm
```

1.4 Install PostgreSQL 9.3 with YUM
```
yum install postgresql93 postgresql93-server postgresql93-contrib
```

Initialize Cluster with initdb Command
`su - postgres -c /usr/pgsql-9.3/bin/initdb`

to configure your access permissions see this file 
`/var/lib/pgsql/9.3/data/pg_hba.conf`
could be useful to give access to other servers

Start PostgreSQL 9.3 server now
`systemctl start postgresql-9.3.service`

Start PostgreSQL 9.3 on every boot 
`systemctl enable postgresql-9.3.service`

Change to postgres user
`su postgres`

Create test database (as postgres user)
`createdb test`

Login test database (as postgres user)
`psql test`

Create New “testuser” Role with Superuser and Password
`CREATE ROLE testuser WITH SUPERUSER LOGIN PASSWORD 'test'`
this may be important when setting up the rails db config

Test Connection from localhost (as Normal Linux User)
`psql -h localhost -U testuser test`

[this same post](http://www.if-not-true-then-false.com/2012/install-postgresql-on-fedora-centos-red-hat-rhel/) has instructions to enable remote connections to the db through the firewall if that's needed later.


now set a password for postgres
`sudo su postgres`
`psql`
`\password`
then give the password and confirmation.  Or create the roll at the same time
`create user blog with password 'secret';`

Then create the database
`create database blog_production owner blog;`



# Node
### Now we are gonna install node, which is necessary for Ember.

first add  "Development Tools"
`sudo yum -y groupinstall "Development Tools"`
I'm not quite sure if this is necessary or not. 

and another thing I don't really know about
`sudo yum -y install screen`

I'm not sure how but I did this next and it worked.
http://serverfault.com/questions/299288/how-do-you-install-node-js-on-centos

install RVM
`\curl -sSL https://get.rvm.io | bash`

and then the ruby version
`rvm install 2.1.1`