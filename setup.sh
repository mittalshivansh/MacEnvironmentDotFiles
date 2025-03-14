
# entry point for all the scripts to setup new mac environment

# use the -S switch which reads the password from STDIN and pass password as argument when running the script
# echo $1 | sudo -S su

# Change permissions for the current directory and its contents
sudo chmod -R 755 . || { echo "Failed to change permissions"; exit 1; }

# Source the scripts
source ./.brew || { echo "Failed to source .brew"; exit 1; }
source ./.brew_stack || { echo "Failed to source .brew_stack"; exit 1; }
source ./macosdefaults.sh || { echo "Failed to source macosdefaults.sh"; exit 1; }

echo "Setup complete."