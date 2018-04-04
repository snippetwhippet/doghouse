source ~/.aliases
source ~/.bashrc
source ~/.bash_prompt

# Browserstack Local
function browserstack() {
     ./BrowserStackLocal <BROWSERSTACK_KEY>
}

# JSPM Github Configuration
export JSPM_GITHUB_AUTH_TOKEN="<TOKEN>"

# removes the need to run the docker Quickstart Terminal
alias dkshell='exec /Applications/Docker/Docker\ Quickstart\ Terminal.app/Contents/Resources/Scripts/start.sh'

# is faster than dkshell and essentially does the same thing
function dockerstart() {
     echo ''
     echo '                    ##         .'
     echo '              ## ## ##        =='
     echo '           ## ## ## ## ##    ==='
     echo '       /"""""""""""""""""\___/ ==='
     echo '  ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~'
     echo '       \______ o           __/'
     echo '         \    \         __/'
     echo '          \____\_______/'
     echo '            >o<'
     echo ''
     eval "$(docker-machine env default)"
}

# Runs a command a number of times, type in run # command
function run() {
    number=$1
    shift
    for n in $(seq $number); do
      $@
    done
}

function gotoolshed1 () {
    mysql.server start
    cd <PATH_TO_VMS>
    vagrant up
}

function gotoolshed2 () {
    echo ''
    echo '                  //     //                  '
    echo '                 ///     ///                 '
    echo '                ////     ////                '
    echo '                //////*//////                '
    echo '                 ///////////                 '
    echo '                   &/////(&                  '
    echo '           .//(    &/////(    (//,           '
    echo '        //////(    &/////(    (/////*        '
    echo '     /////////     &/////(     /////////     '
    echo '    (/////#        &/////(        ///////    '
    echo '    (//////.       &/////(       ,///////    '
    echo '     &/////////    &/////(    ,///////(      '
    echo '         (/////    &/////(    (////#         '
    echo '            ///    &//////    (/#            '
    echo '                   &//////                   '
    echo '                  ////&////                  '
    echo '                  //&   &///                 '
    echo '                  ///&&////(                 '
    echo '                   ///////                   '
    echo ''
 node /Users/flunsford/.nvm/versions/node/v4.5.0/lib/node_modules/concurrently --kill-others "<PATH_TO_RUN_CMD>"
}
