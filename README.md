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
./Unix-based.sh
```
- **NOTE:** Change the path<br>

On the first run, the script will prompt you for your username and password, like this:
![username](/images/userpass.png)

But for future runs, it’s not necessary.

For future runs, you can simply use this alias. Run these commands in your terminal:
```
cd
echo "\n\nalias autwifi='Your/Script/Directory/Path/Unix-based.sh'"
```

Now you can simply run the script by typing this alias in the terminal:
```
autwifi
```

### Windows
open Command Prompt as an administrator; then:
```
\Your\Script\Directory\Path\Windows.bat
```
- **NOTE:** Change the path<br>