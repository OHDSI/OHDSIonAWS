#!/bin/bash
#
# usermgmt.ksh
#
# Atlas user management script
#
# HISTORY:
# 2020/10/02    Jimmy DeLurgio  Initial Code

LOGFILE="/tmp/usermgmt.log"

#
# FUNCTION: lookupuser
#
#
lookupuser(){
        clear

        ##
        ## Get user name and database host
        ##
        echo -e "User name: \c"
        read user
        echo -e "OHDSI RDS Endpoint name: \c"
        read dbhost

        ##
        ## Iterate through environments
        ##
        echo -e "$(date) - Looking up user: ${user} on ${dbhost}" >> ${LOGFILE}
        psql -d OHDSI --host=${dbhost} --port=5432 -U ohdsi_security_user -a -c "select * from authentication.security where email='${user}';"

        echo -e "Press ENTER to continue..."
        read enter
}
#
# FUNCTION: adduser
#
#
adduser(){
        clear

        ##
        ## Get username
        ##
        echo -e "User name: \c"
        read user

        ##
        ## Get password
        ##
        echo -e "Enter a password: \c"
	        read password
	
	        ##
	        ## Set hased password
	        ##
	        atlaspw=`htpasswd -bnBC 4 "" $password | tr -d ':\n' | sed 's/$2y/$2a/'`
	
	        ##
	        ## Get database host
	        ##
	        echo -e "OHDSI RDS Endpoint name: \c"
	        read dbhost
	
	
	        ##
	        ## Adding User
	        ##
	        psql -d OHDSI --host=$dbhost --port=5432 -U ohdsi_security_user -a -c "insert into authentication.security (email,password) values ('$user', E'$atlaspw');"
	
	
	        ##
	        ## Log It
	        ##
	        echo "$(date) - Adding user: ${user}" >> ${LOGFILE}
	
	        echo "Press ENTER to continue..."
	        read enter
	}
	
#
# FUNCTION: resetpassword
#
#
resetpassword(){
        clear

        ##
        ## Get username
        ##
	echo -e "User name: \c"
	read user
	
	##
	## Get password
        ##
        echo -e "Enter a new password: \c"
        read resetpassword
	
        ##
        ## Set hashed password
        ##
        atlaspw=`htpasswd -bnBC 4 "" $resetpassword | tr -d ':\n' | sed 's/$2y/$2a/'`
	
	##
	## Get database host
	##
	echo -e "OHDSI RDS Endpoint name: \c"
	read dbhost
				
	##
	## Resetting password
	##
	psql -d OHDSI --host=$dbhost --port=5432 -U ohdsi_security_user -a -c "update authentication.security set password=E'$atlaspw' where email='$user';"
		
	##
	## Log It
	##
	echo "$(date) - Resetting password for user: ${user}" >> ${LOGFILE}
	echo "Press ENTER to continue..."
	read enter
	}
		
#
# FUNCTION: deleteuser
#
#
deleteuser(){
	clear
	
	##
	## Get user name and database host
	##
	echo -e "User name: \c"
	read user
		
	echo -e "OHDSI RDS Endpoint name: \c"
	read dbhost
		
	##
	## Iterate through environments
	##
	echo -e "$(date) - Deleting user: ${user} on ${dbhost}" >> ${LOGFILE}
	psql -d OHDSI --host=${dbhost} --port=5432 -U ohdsi_security_user -a -c "delete from authentication.security where email='${user}';"
	echo -e "Press ENTER to continue..."
	read enter
	}
#
# Main Menu Loop
#
	while true
	do
               	clear
       		echo -e "\tAtlas User Management${endColor}"
	        echo -e "\t\t1.\tLookup User"
	        echo -e "\t\t2.\tAdd User"
	        echo -e "\t\t3.\tReset Atlas User Password"
	        echo -e "\t\t4.\tDelete User"
	        echo -e "\t\tX.\tExit"
	        echo -e "\tEnter Choice:  \c"
	        read choice
	        case $choice in
	                1)
	                        lookupuser
	                        ;;
	                2)
	                        adduser
	                        ;;
	                3)
	                        resetpassword
	                        ;;
	                4)
	                        deleteuser
	                        ;;
	                x*|X*|q*|Q*)
	                        clear
	                        echo -e "$(date) - Ended usermgmt.ksh" >> ${LOGFILE}
	                        echo -e "------------------------------------------------------------" >> ${LOGFILE}
	                        echo -e "" >> ${LOGFILE}
	                        exit
	                        ;;
        esac
	done	