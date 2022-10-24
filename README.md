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



Файлы:
playbook - собственно текстовый файл с описанием, выполнением, установкой
ansible.cfg  - конфигурационый файл ansible
ansible.log  - файл логов 
*.j2 - специальный файл ansible, шаблон, встроенные переменные
*.yaml - чаще всего это файл playbook ansible
*.yml - чаще всего это файл playbook ansible
hosts.txt - список хостов к каторым применяется playbook 
config - каталог в который просто положиили файлы для удобства
role - набор playbook
ansible-playbook NAME_PLAYBOOK.yml - вот так запускаются blaybook


Доступные playbook:
backuppc - скрипт развертывания сервера бэкапов
bind9-dns-server  - скрипт развертывания сервера DNS (bind9)
faucet - скрипт развертывания сервера faucet                    
faucet-ovs-config-clients - скрипт настройки ovs (openvswitch) для клиентов faucet
faucet-ovs-config-server - скрипт настройки ovs (openvswitch) для сервера faucet 
frr - скрипт развертывания frr (FRRouting Project-BGP, OSPF, RIP, IS-IS, PIM, LDP, BFD, Babel, PBR, OpenFabric and VRRP, with alpha support for EIGRP and NHRP)                      
get-network-interfaces-files  - скрипт загружает файл /etc/network/interface
git-server - скрипт развертывания простого git                   
haproxy - скрипт развертывания haproxy (webproxy server) 
hosts - скрипт приводит файл hosts на серверах к нужному виду   
local.gen - скрипт приводит local на серверах к нужному виду  
logwatch - скрипт развертывает logwatch (специальная программа отпровляет лог на почту email)  
mail-postfix-server  - скрипт развертывает простой почтовый сервер postfix
rdcore - скрипт развертывает rdcore (Современная система управления сетями FreeRADIUS, OpenWRT и Batman-adv mesh)
rdcore-add-freeradius  - скрипт доустанавливает freeradius на сервер rdcore
restart-zabbix - скрипт перезапускает заббикс        
scripts - каталог с набором случайных скриптов    
test_hosts  - скрипт провеки доступности хостов
user_managments  - скрипт управления пользователями на серверах
zabbix-agent - скрипт развертывания zabbix-agent (агенты для мониторинга)
zabbix-server-6.2 - скрипт развертывания zabbix-server (сервер мониторинга)