for host in $(cat pc.txt); 
           do virsh start $host;
done

