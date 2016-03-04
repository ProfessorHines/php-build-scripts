# ImagicalMine Installer Language Files

Hi! You're probably here because you want to help translate the installer steps to a different language, isn't that right? Well, let's get straight into it! But firstly, I'd like to say thanks on behalf of the team at ImagicalMine for attempting to translate English to a different language.

- 1. Fork the ImagicalMine/php-build-scripts repository

This can be easily done by clicking the Fork button at the top right-hand corner.

- 2. Go to the languages/ folder and create the translated file

Navigate to the languages/ folder and then click "New File" in the repository navigation bar. When naming your file, make sure it's a two letter code and then with the ".sh" suffix at the end - e.g. en.sh for English, and de.sh for German. Your file should look like this(example is done in English):
```
#!/bin/bash

# This can be used for debugging
message_hello_world="Hello world"

# Global messages(displayed multiple times throughout)
exit="system>   4) Exit ImagicalMine installation"
exit1="system>   6) Exit ImagicalMine installation"
no_selection="system> Number (e.g. 1):"
error_selection="error> An unexpected error occurred - you entered an unknown selection. Restart the script, and then choose again."

# Individual messages(only displayed once)

language_selected="system> You've selected English for the language to be used throughout installing ImagicalMine."
php_prompt="system> Select which PHP binary you want to install:"
linux_32="system>   1) Linux x86(32-bit)"
linux_64="system>   2) Linux x64(64-bit)"
mac_32="system>   3) Mac x86(32-bit)"
mac_64="system>   4) Mac x64(64-bit)"
rpi2="system>   5) Raspberry Pi 2"

im_install_echo="system> Installing ImagicalMine..."
php_install_echo="system> Installing PHP binary..."
loop_prompt="system> Do you want ImagicalMine to automatically restart your server if it stops or crashes?"
yes="system>   1) Yes"
no="system>   2) No"
installation_complete="system> ImagicalMine installation completed! Run ./start.sh (or ./st*) to start ImagicalMine."
```

Take note of the variable definers and the quotes - they are vital in making the installation go as smoothly as it can without errors! After you've translated the file, write an appropriate commit message and an optional description and commit your changes.

- 3. Make a pull request to submit your changes

Finally, click "New pull request" located at the repository's navigation bar, then click "Create pull request" near the top left-hand corner. Write an appropriate title for your pull request, then write about what you've changed in the description. Click "Submit pull request" when you're happy, then check the checkboxes to make sure your pull request matches the guidelines.

Thanks for contributing to ImagicalMine's UNIX installer!
