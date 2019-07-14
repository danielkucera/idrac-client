#!/bin/bash

HOST=$1
USER=root
PORT=5900

echo -n Password: 
read -s PASSWORD

java -cp "avctKVM.jar" -Djava.library.path=lib/ com.avocent.idrac.kvm.Main apcp=1 ip=$HOST \
vmprivilege=true kmport=$PORT vport=$PORT user=$USER passwd=$PASSWORD
