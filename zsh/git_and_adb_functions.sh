# https://github.blog/open-source/git/get-up-to-speed-with-partial-clone-and-shallow-clone/
# optimal way to clone a monorepo
# git clone --filter=blob:none
# git clone --filter=blob:none --no-checkout
# git clone --filter=blob:none --no-checkout --depth 1

# Function to clone a monorepo with parameters
monorepoClone() {
    git clone --filter=blob:none "$@"
}

fun enableCharlesADB() {
    ip=${1:-192.168.1.65}
    port=8888
    adb shell settings put global http_proxy $ip:$port
    echo "set global proxy to $(adb shell settings get global http_proxy)"
}

fun disableCharlesADB() {
    adb shell settings put global http_proxy :0
}

fun addAll(){
    git add .
    git reset gradle.properties
}

fun fu(){
    echo "adding all"    
    git add .
    git reset gradle.properties
    echo "commiting with message : " $1
    git commit -m $1
    echo "pushing to remote"
}

fun ck(){
    git checkout develop
    git pull origin develop
    branch_name=localization/JP-$1
    git checkout -b ${branch_name}
}

fun ck1(){
    git checkout develop
    git pull origin develop
    branch_name=picasso/ADSAPP-$1
    git checkout -b ${branch_name}
}

fun testP(){
    foo=picasso/ADSAPP-$1
    echo ${foo}
}

fun resetAllAg(){
    git reset
    git add gradle.properties
    git checkout -- .
}

fun cleanRepo(){
    git remote prune origin
    git branch -vv | grep 'origin/.*: gone]' | awk '{print $1}' | xargs git branch -d 
}

fun aCrash(){
    adb logcat --buffer=crash
}
