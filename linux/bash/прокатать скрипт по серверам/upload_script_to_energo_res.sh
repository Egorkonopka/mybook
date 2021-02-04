#!/bin/sh
RES=([0]=dnres [1]=zvdres [2]=gvres [3]=apres [4]=vgres [5]=pvres [6]=krgres [7]=inres)
ABN=([0]=dn [1]=zv [2]=gv [3]=ap [4]=vg [5]=pv [6]=krg [7]=in)
SERVERS=([0]='192.168.15.15' [1]='192.168.26.1' [2]='192.168.17.1' [3]='192.168.85.1' [4]='192.168.20.1' [5]='192.168.21.1' [6]='192.168.75.1' [7]='192.168.85.1')

#Удаляем старые таблици по РЕС и обновляем
for i in 0 1 2 3 4 5 6 7
    do
    echo "upload  \"$1\" from energo_${RES[i]} ${SERVERS[i]}";
    su - postgres -c "psql -h ${SERVERS[i]} -U local -d energo_${RES[i]} < \"$1\""
    done
