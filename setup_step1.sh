
# entry point for all the scripts to setup new mac environment

# use the -S switch which reads the password from STDIN and pass password as argument when running the script
# echo $1 | sudo -S su

# Change permissions for the current directory and its contents
sudo chmod -R 755 . || { echo "Failed to change permissions"; exit 1; }

# Source the scripts
source ./macosdefaults.sh || { echo "Failed to source macosdefaults.sh"; exit 1; }
source ./.brew || { echo "Failed to source .brew"; exit 1; }
#after brew installation, the path is not set, so need to source the path
# add brew to path
export PATH=/opt/homebrew/bin:$PATH

echo "Step 1 complete. check brew is in path and then proceed to step 2"
echo "Run setup_step2.sh"