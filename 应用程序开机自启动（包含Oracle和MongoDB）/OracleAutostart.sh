#!/bin/bash
su - oracle <<EON
lsnrctl start
sqlplus / as sysdba <<EOF
startup
exit
EOF
exit
EON