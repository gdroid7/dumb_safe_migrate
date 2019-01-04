# dumb_safe_migrate
To intercept laravel's artisan migrate command to check for active database.

SCRIPT FOR CHECKING CURRENT DB CREDS BEFORE RUNNING 
    php artisan migrate

# 1: INSTALL A SCRIPT THAT WILL RUN BEFORE EVERY COMMAND , BASICALLY MIDDLEWARE FOR BASH COMMANDS.

    # COPY + PASTE BELOW TWO COMMANDS INTO TERMINAL ( EXCLUDING $ )
    # " Pull down our file from GitHub and write it to our home directory as a hidden file. "

        curl https://raw.githubusercontent.com/rcaloras/bash-preexec/master/bash-preexec.sh -o ~/.bash-preexec.sh

    # " Source our file at the end of our bash profile (e.g. ~/.bashrc, ~/.profile, or ~/.bash_profile) "
        
        echo '[[ -f ~/.bash-preexec.sh ]] && source ~/.bash-preexec.sh' >> ~/.bashrc
        source ~/.bash-preexec.sh

# 2: DEFINE A PREEXEC FUNCTION TO INTERCEPT THE SPECIFIC COMMAND
    # COPY AND PASTE THIS FUNCTION IN  ~/.bashrc
