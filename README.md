# WSL-xrdp-autostart
>inspired by this project https://github.com/troytse/wsl-autostart

everytime I want to work in WSL desktop,I have to start xrdp manually,That's so sad.

I have tried to add xrdp in the wsl-autostart command list,However it seems not work (only xrdp-sesman start)and I don't know why:(

so,I just make a dirty hack by creating a simple vbscript to simulae keyboad input.

the installation is easy,just add the vbscript in windows task scheduler(you can set delay 5 sec to run the task in case of too early to send keys) and enjoy it :)
 ```vb
 Set bjShell = CreateObject("Wscript.Shell")
strCommandLine = "kali"        ' your WSL distribution
bjShell.Run(strCommandLine)
WScript.Sleep 300   
bjShell.SendKeys "service xrdp start"        ' service you want to start on boot
bjShell.SendKeys "{ENTER}"    
bjShell.SendKeys "logout"     
bjShell.SendKeys "{ENTER}"    
 ```
