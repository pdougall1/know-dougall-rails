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