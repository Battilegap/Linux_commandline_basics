#!/usr/bin/expect
set hostname [lindex $argv 0]
spawn ssh-keygen -C lcb-${USER} -t ecdsa -b 521 -f /root/.ssh/id_ecdsa_workbox
expect "Enter passphrase (empty for no passphrase):"
send "\r"
expect "Enter same passphrase again:"
send "\r"
expect eof
