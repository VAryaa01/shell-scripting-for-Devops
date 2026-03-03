#!bin/bash
error_file='cat /var/log/messages'
match_error='grep -i error /var/log/messages'
echo $matched_error
if [[ $? -eq 0 ]];
then
	echo " found error in os logs: $matched_error "
else
	echo " no eeror in message logs "

fi
