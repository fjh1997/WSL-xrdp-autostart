Set bjShell = CreateObject("Wscript.Shell")
strCommandLine = "kali"        
bjShell.Run(strCommandLine)
WScript.Sleep 300   
bjShell.SendKeys "service xrdp start"        
bjShell.SendKeys "{ENTER}"    
bjShell.SendKeys "logout"     
bjShell.SendKeys "{ENTER}"     