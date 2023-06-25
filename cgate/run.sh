#!/usr/bin/with-contenv bashio

RESTART=126
while [ $RESTART -eq 126 ]
do
        java -Djava.library.path=. -jar cgate.jar -c /config/CGate/config/C-GateConfig.txt
        RESTART=$?
done
