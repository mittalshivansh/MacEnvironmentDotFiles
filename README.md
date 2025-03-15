
## How to Get Started

1. **Login to Apple ID**: Access the scripts and backup configs in iCloud Drive.
2. **Install Xcode Command Line Tools**: Run `xcode-select --install` or download from [Apple Developer](https://developer.apple.com/download/more/).
3. **Check Brew Formulae**: Run `chmod +x check_casks.sh` and `./check_casks.sh` to check all available brew formulae from [Homebrew](https://formulae.brew.sh/).
4. **Run Setup Scripts**:
	- Run `sudo ./setup_step1.sh` (requires sudo access).
	- Wait for the script to complete, follow any shell output instructions, then run `./setup_step2.sh`.
5. **Configure IDEs**: When opening IntelliJ IDEs, provide the path to config files in this repo or cloud drive.
6. **Zsh History Config**: Refer to [Unix StackExchange](https://unix.stackexchange.com/questions/21008/sharing-or-synchronizing-history-between-zsh-and-bash) and [Gist](https://gist.github.com/matthewmccullough/787142).

## Final Steps

- Install the dark solarized theme in iTerm.
- Select the Mariana color scheme in Sublime Text.
- Increase the default zoom level to 110% in Chrome browser settings.
- Set the font size to 13 or 14 in your code editors and shells.

## TODOs After Setup

- Refer to the [manual steps list](pending_automation.md).
- Use the `diff` command to identify macOS user preferences differences in settings and automate them: [Pawel Grzybek's Guide](https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/).
- Enable Google Calendar notifications.
- Restore apps from the purchased items list in the Apple App Store.

script to add /Users/shivanshmittal/Library/Android/sdk/platform-tools in shell path
add file creator header for android studio preference and vs code. script backing up studio and vs code configs.

## Future Changes

- Update the macOS defaults script whenever you change any application default settings.
- Regularly update brew packages when installing or uninstalling applications.

## This issue of autoupdate might not be valid anymore in new versions (to be checked and confirmed)

- This attribute is added so that it can ask for user confirmation the first time the downloaded program is run, to help stop malware.

### Disable System Integrity Protection to run below command related to quarantine flag 
- Boot into Recovery Mode by restarting your Mac and holding down Command + R until the Apple logo appears.
- Open Terminal and type `csrutil disable; reboot`.
- To re-enable, type `csrutil enable; reboot`.

### App Translocation Gotcha with Brew
 
- Note : got cybersecurity escalation for running this command on corporate/office laptops, (only run it in personal laptop)
- For auto-updates to work in all apps via brew cask, remove the Apple quarantine flag by running: `sudo xattr -d -r com.apple.quarantine /Applications/*`.
- Apple adds a quarantine flag to all applications downloaded and moved using terminal commands. This flag is automatically cleared when moving applications using Finder. [More Info](https://lapcatsoftware.com/articles/app-translocation.html)
