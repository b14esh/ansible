for host in $(cat pc.txt); 
           do virsh shutdown $host;
done

