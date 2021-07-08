# sh-sudo
A small script for running commands as a superuser for ordinary users

## Preparations
Create file `/etc/rc/daemon.conf`

Write line by line in the file the names of users who are allowed to execute commands on behalf of the superuser

`systemctl start root_daemon`

`rc whoami`
