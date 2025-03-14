#after brew installation, the path is not set, so need to source the path
source ./.brew_stack || { echo "Failed to source .brew_stack"; exit 1; }



###############################################################################
# Clone dot files, and update new findings quickly                                                  #
###############################################################################

cd ~/Documents/
mkdir projects
cd projects
git clone https://github.com/mittalshivansh/MacEnvironmentDotFiles.git

echo "Set up complete."