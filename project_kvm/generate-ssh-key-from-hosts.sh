ssh-keygen && for host in $(cat pc.txt); do ssh-copy-id $host; done
