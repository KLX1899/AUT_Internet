# AUT_Internet
Does your internet at AUT keep disconnecting and reconnecting?<br>
You can use this script.
<br>
<br>
## How to Use?
1. clone the repository
2. enter your _username_ and _password_ in script
3. run the commands which belongs to your OS<br>
- **[MacOS](#Unix-based)<br>**
- **[Linux](#Unix-based)<br>**
- **[Windows](#Windows)<br>**
<br>

### Unix-based
```
cd Your/Script/Directory/Path
sudo chmod 755 Unix-based.sh
crontab -e
```
- **NOTE:** Change the path<br>

Add the following directive at the end of the file:
```
15 * * * * /Your/Script/Directory/Path/Unix-based.sh
```
- **NOTE:** You can set the period as you wish. [more](https://www.freecodecamp.org/news/cron-jobs-in-linux/#:~:text=Below%20is%20the%20summary%20of%20the%20cron%20job%20syntax.)<br>

Save and close the file.

List all Cron jobs and verify that the new Bash script task is available:
```
crontab -l
```
If the output looks like this, everything is OK:
```
# 
# For more information see the manual pages of crontab(5) and cron(8)
# 
# m h  dom mon dow   command

15 * * * * /Your/Script/Directory/Path/Unix-based.sh
```

### Windows
open Command Prompt as an administrator; then:
```
\Your\Script\Directory\Path\Windows.bat
```
- **NOTE:** Change the path<br>