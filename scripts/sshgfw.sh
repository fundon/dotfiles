#!/usr/bin/expect -f
# pwd: Qtz31ixQ89
set timeout 30
set password "Qtz31ixQ89"
spawn ssh -qTfnN -D 7070 kissdry.ssh3.hangssh.info@69.85.93.147
expect "password:"
send "$password\r"
interact


