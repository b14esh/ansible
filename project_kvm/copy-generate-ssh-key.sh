for host in $(cat pc-ip.txt); 
                do ssh-copy-id $host; 
done
