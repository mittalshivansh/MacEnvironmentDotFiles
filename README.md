# Mac-environement-Dot-Files-

## setup.sh
* For autoupdates to work in all apps via brew cask remember to remove apple quarantite flag for all applications by running -  sudo xattr -d -r com.apple.quarantine /Applications/*
	* Apple add quarantite flag to all application downladed and moved using terminal coomand to applications folder, as we are installing app using brew so all application casks will e marked as quarantine and application will run from reaad only apptranslocation folder. so after installing application thriugh cask remmeber to clear qurantine flag which is automatically cleared when we move using finder on mac os. [link](https://lapcatsoftware.com/articles/app-translocation.html)


## Last but not the least
* don't forget to install dark solarized theme in iterm
* don't forget to select mariana color scheme in sublime.


## Disable System Integrity Protection for acessing root restrcited usage in mac.
* Some programs make calls to the operating system which OSX began to see as a threat, beginning with El Capitan.
* Boot OS X into Recovery Mode: hold down the command + R keys
* choose Terminal then type csrutil disable; reboot
* csrutil enable;reboot to revert back to more secure mac.

## TODOS ater setup
* enable google calendar notifications visiting them.


