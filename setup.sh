
# entry point for all the scripts to setup new mac environment

# use the -S switch which reads the password from STDIN and pass password as argument when running the script
# echo $1 | sudo -S su

sudo chmod -R 755 * 
sudo chmod -R 755 .

# ./.brew
# ./.brew_stack
# ./cask_stack.sh
# ./macosdefaults.sh

source .brew
source .brew_stack
source macosdefaults.sh


