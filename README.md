# Windows Daily Software Upgrade

> Update Windows software daily with PowerShell, Chocolatey, and Task Scheduler

Developers work hard so we can be lazy (about the boring tasks). :)

## Links

- [Web Page](https://denisecase.github.io/windows-daily-software-upgrade/)
- [Source](https://github.com/denisecase/windows-daily-software-upgrade)

## Level 1 - Keeping Software Current Manually

Chocolatey offers a convenient way to install software packages. To upgrade all, open a PowerShell window and run:

```PowerShell
choco upgrade all -y
refreshenv
```

## Level 2 - Don't Type, Script

Avoid typing (as easy as it is), by creating a PowerShell script named [daily.ps1](.\daily.ps1).

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

Script the procedure above. Review and edit the PowerShell script named [create-scheduled-task.ps1](.\create-scheduled-task.ps1) as desired.

To create the scheduled task, open PowerShell as an Adminstrator in this folder and run:

```PowerShell
.\create-scheduled-task.ps1
```

## Recommended: Explore Scheduled Tasks

- Open Task Scheduler, click "Task Scheduler Library" and under Name, find the task and double-click to open.

- To test, under 'Selected Item', click 'Run'.

## Recommended Prerequisites

Windows Setup for Developers

- <https://github.com/denisecase/windows-setup>

Windows File Management with PowerShell

- <https://github.com/denisecase/windows-file-management>

Basic Tools for Web Development

- <https://github.com/denisecase/basic-tools-for-webdev>

Getting started with Git on Windows

- <https://github.com/denisecase/git-started-windows>

## See Also

- [List of repos that illustrate concepts in web apps](https://profcase.github.io/web-apps-list/)