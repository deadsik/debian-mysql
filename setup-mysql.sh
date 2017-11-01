#!/bin/bash
VAR=$(expect -c '
spawn apt-get -y install mysql-server
expect "New password for the MySQL \"root\" user:"
send "PasswordHere\r"
expect "Repeat password for the MySQL \"root\" user:"
send "PasswordHere\r"
expect eof
')
echo "$VAR"
