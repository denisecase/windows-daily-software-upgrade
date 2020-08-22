# Windows Daily Software Upgrade

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v1.4%20adopted-ff69b4.svg)](code-of-conduct.md)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](https://opensource.org/licenses/MIT)

> Update Windows software daily with PowerShell, Chocolatey, and Task Scheduler

Developers work hard so we can be lazy (about the boring tasks). :)

## Links

- [Web Page](https://denisecase.github.io/windows-daily-software-upgrade/)
- [Source](https://github.com/denisecase/windows-daily-software-upgrade)

## Recommended Prerequisites

- [Windows Setup for Developers](https://github.com/denisecase/windows-setup)
- [Windows File Management](https://github.com/denisecase/windows-file-management)
- [Basic Tools for Web Development](https://github.com/denisecase/basic-tools-for-webdev)
- [Git Started on Windows](https://github.com/denisecase/git-started-windows)

## Level 1 - Keeping Software Current Manually

Chocolatey offers a convenient way to install software packages. To upgrade all, open a PowerShell window and run:

```PowerShell
choco upgrade all -y
refreshenv
```

## Level 2 - Don't Type, Script

Avoid typing (as easy as it is), by creating a PowerShell script named [daily.ps1](./daily.ps1).

Clone (or fork and clone) this repo down to your local machine. Open a PowerShell as Admin in this folder and run:

```PowerShell
.\daily.ps1
```

Alternatively, create a DOS command to run PowerShell and call the script from anywhere. Open a Windows Command Window as Administrator as in this folder and run:

```DOS
PowerShell -File ".\daily.ps1"
```

Now use Windows Explorer to get the full path to your script and test the command. For example (replace with your path):

```DOS
PowerShell.exe -NoExit -File "C:\Users\username\git\windows-daily-software-upgrade\daily.ps1"
```

Verify the command is correct before continuing.

## Level 3 - Schedule the Script Manually (Option 1)

Two options:

1. Do this part manually to explore scheduled tasks OR
1. Automate this also (see Level 4)

If you choose the manual option (use your path below!):

1. Open Task Scheduler by hitting Windows Start key, and typing Task Scheduler until it appears. Click to open.
1. In Actions Pane, click 'Create Basic Task'.
1. In Name, type "_Daily choco upgrade", click 'Next'.
1. Daily is selected, so click 'Next'.
1. Set Start time, e.g., 8:00:00 AM, click 'Next'.
1. 'Start a program' is selected, so click 'Next'.
1. In Program/script:, type ```PowerShell.exe```.
1. In Add aruments (optional), type ```-NoExit -File "C:\<replace with your path>\windows-daily-software-upgrade\daily.ps1"```
1. Click 'Next'.
1. Click 'Finish'.

## Level 4 - Script the Scheduling (Option 2)

Script the procedure above. Review and edit the PowerShell script named [create-scheduled-task.ps1](create-scheduled-task.ps1) as desired.

To create the scheduled task, open PowerShell as an Adminstrator in this folder and run:

```PowerShell
.\create-scheduled-task.ps1
```

After the scheduled task is created, we must edit two settings to enable it to run the choco update as an administrator. 

Follow the instructions shown in [this article](https://www.windowstricks.in/2018/08/how-to-run-the-powershell-script-in-scheduled-task-with-run-as-administrator.html). Open Task Scheduler and highlight the new task. Click properties, then:

1. On Actions tab / Arguments, insert **-ExecutionPolicy Bypass** before -File.
1. On General tab / check **Run with highest privileges**.

## Recommended: Explore Scheduled Tasks

- Open Task Scheduler, click "Task Scheduler Library" and under Name, find the task and double-click to open.

- To test, under 'Selected Item', click 'Run'.

You can also access the scheduled task to delete it, change the scheduled time, or make other modifications.

## See Also

- [Setting Up for Professional Software Development](https://github.com/denisecase/pro-dev-list)

