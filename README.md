script to add /Users/shivanshmittal/Library/Android/sdk/platform-tools in shell path
- add file creator header for android studio preference and vs code. script backing up studio and vs code configs. 

## How to get started
* Login in to your apple id to get the scripts and backup configs in icloud drive
* first install xcode-select --install or download from https://developer.apple.com/download/more/ to download git tool etc. 
* run ./check_casks.sh to check all available brew formulae from https://formulae.brew.sh/
* run sudo ./setup.sh, script should run with sudo access so that whole session gets sudo permissoion
* when opening intellij ide's, give path to config files in this repo or cloud drive.
* zsh history config : https://unix.stackexchange.com/questions/21008/sharing-or-synchronizing-history-between-zsh-and-bash, https://gist.github.com/matthewmccullough/787142

## Disable System Integrity Protection for acessing root restrcited usage in mac.

* Some programs make calls to the operating system which OSX began to see as a threat, beginning with El Capitan, basically it is required to run below App translocation, might be it is not required in newer macos versions
* Boot OS X into Recovery Mode: hold down the command + R keys
* choose Terminal then type csrutil disable; reboot
* csrutil enable;reboot to revert back to more secure mac.

### App translocation gotcha when installed from brew
* For autoupdates to work in all apps via brew cask remember to remove apple quarantite flag for all applications by running -  sudo xattr -d -r com.apple.quarantine /Applications/*
	* Apple add quarantite flag to all application downladed and moved using terminal coomand to applications folder, as we are installing app using brew so all application casks will e marked as quarantine and application will run from reaad only apptranslocation folder. so after installing application thriugh cask remmeber to clear qurantine flag which is automatically cleared when we move using finder on mac os. [link](https://lapcatsoftware.com/articles/app-translocation.html)

## Last but not the least

* don't forget to install dark solarized theme in iterm
* don't forget to select mariana color scheme in sublime.
* increase default zoom level to 110% in chrome browser settings
* increase font size to 13 or 14 on your code editors and shells.


## TODOS ater setup
* [manual steps list](pending_automation.md)
* (very important as it will faster to do when setting up new mac next time)use diff command to get difference in settings and automate it by adding that command : https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
* enable google calendar notifications visiting them.
* Go to purchased items list to restore apps on apple's app store.


## Future Changes
* Remember to update macos defaults script everytime u update any applicaiton default.
* Keep updating brew packages everytime you install or uninstall the package/application.
