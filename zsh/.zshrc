# Load custom functions and aliases
source ~/Documents/MacEnvironmentDotFiles/zsh/git_and_adb_functions.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"
# export JAVA_HOME="/Applications/Android Studio.app/Contents/jre/Contents/Home"
# export JAVA_HOME="/Library/Java/JavaVirtualMachines/zulu-17.jdk/Contents/Home"

# Alias for Java 8
alias java8='export JAVA_HOME=$(/usr/libexec/java_home -v 1.8) && java -version'

# Alias for Java 11
alias java11='export JAVA_HOME=$(/usr/libexec/java_home -v 11) && java -version'

# Alias for Java 15
alias java15='export JAVA_HOME=$(/usr/libexec/java_home -v 15) && java -version'

# Alias for Java 17
alias java17='export JAVA_HOME=$(/usr/libexec/java_home -v 17) && java -version'