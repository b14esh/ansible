# ansible
ansible all -m setup - выведет параметры всех серверов
ansible 10.0.0.1 -m setup - выведет параметры 10.0.0.1 (покажит переменные, полезно при использовании шаблонов)
ansible all -m shell -a "uptime" - выполнить на всех серверах команду uptime


ansible -i host.txt all  -m ping  - запустили проверку в ответ прилетит PONG
-i host.txt  - файл с хостами
all - группа в данном случае для всех
-m ping - используем модуль ping для linux хостов
-m win_ping  - используем модуль ping для windows хостов


ansible all -m shell -a "df -h" - выполнить на всех серверах команду df -h (занятое место)
 
ansible all -m command -a "uptime" - тоже самое что и shell но в нем не будут работать переменные и спец символы !@#$%^&*(}| и тд


ansible all -m file -a "path=/home/XXX.txt state=absent" -b - удаление файла XXX.txt



ansible-inventory --list - покажет все хосты и какие переменные к ним относятся
ansible-inventory --graph - покажет все хосты и какие группы в виде дерева