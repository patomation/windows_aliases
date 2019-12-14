# Windows Aliases
I'm a big fan of Oh My Zsh, when circumstances lead me to develop on windows instead of Mac and linux I found myself missing some of the shortcut commands for git and others. So I took all the commands from Oh My Zsh and ported them into a windows bash file as best I could. Now you can have all the git shortcusts such as gst, gb, gp, ga, gc and so on. One day I hope that Oh My Zsh could work for windows command line, especially the themes. But given my understanding it is not possible. So for now we get to have some of the same commands at least. 


# Usage
Edit `Command Prompt` shortcut. By right clicking and choosing `Properties`. Under the `Shortcut` tab edit the line `Target:` to include the path the alisases.cmd file. For example:
```
C:\WINDOWS\system32\cmd.exe /K C:\windows_aliases\aliases.cmd
```
Now whenever you open the CMD shortcut it will include your aliases.

Additionally there is an example shortcut that you can use if you put the repo directly in the `C:\` drive. This is in the shortcut folder. 
