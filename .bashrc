preexec() {

    COMMAND="php artisan migrate"

        if [ "$1" = "$COMMAND" ]; 
        then
            NONE='\033[00m'
            RED='\033[01;31m'
            GREEN='\033[01;32m'
            YELLOW='\033[01;33m'
            PURPLE='\033[01;35m'
            CYAN='\033[01;36m'
            WHITE='\033[01;37m'
            BOLD='\033[1m'
            UNDERLINE='\033[4m'

            clear

            echo -e " ${GREEN} Active DB ${NONE}"
            echo

            if [ -f ./.env ]
            then
                echo -e " ${RED} " | sed -n -e '/^DB_/p' ./.env
                echo -e " ${NONE} "
                echo -e " ${BOLD} ${YELLOW} In-active DB ${NONE}"
                echo -e " ${BOLD} ${GREEN}" | sed -n -e '/^#DB_/p' ./.env
                echo -e " ${NONE} "

                read -p "You sure if the active DB is your LOCAL DB AND/OR you're not INTOXICATED (Y/N) ? (N will exit kill this terminal)" response

                if [ "$response" = "Y" ]; then
                    echo "Good luck !"
                else
                    clear
                fi
            else
                echo ".env file not found."
                clear
            fi
        fi


    }