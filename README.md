# not8bit-menu - Standalone
Menu System for FiveM

# Discord: 

**https://discord.gg/syG8ZpZ6je**

# To Do:
```
Update text layout
Add ability to change theme easier -- DONE v1.0.5 12/28/23
Add QB Core command functionality back under boolean control
```

# Dependencies
```
None
```

# Bugs
```
None
```

# Notice
```
This was designed and tested on a QB-Core server. 
I setup am ESX server for the first time in a little over two and a half years the other day and tested it on there. The menu opened without issue.
That is as far as I got with ESX.
I do not have experience with other frameworks but I imagine it will work there if it can load the resource.

The version checker is only in scripts I am actively working on. I will remove it when I am done with all planned updates.
You can disable the version checker in the shared/sh_config.lua
```

# Features 
```
Standalone.
Unlimited text rows. The limit is what looks good.
Image support that isn't tied to an item.
```

# Using The Menu
## Step one
```
Change 

exports['qb-menu']

to

exports['not8bit-menu-standalone']
```
## Step Two
```
Then you have to add your images to the 'html/images/' folder.
If you add anything other than a .jpg or a .png you will need to add it to the fxmanifest.lua below the others or it will not work.
Use globbing to make your life easier:
    'html/images/*.png',
    'html/images/*.jpg',
    'html/images/*.NEWFILEEXTENSION',
```
## Step Three
```
Then you have to add or change this line 'icon = 'image.png',' where you have your menu events defined in each of your resources
```

## EXAMPLE MENU
```
RegisterNetEvent('not8bit-script:client:openAnotherMenuOrSomething', function()
    local containerMenu = {
        {
            header = "Main Title",
            isMenuHeader = true,
        },
        {
            header = "Button Header",
            icon = 'image.png',
            messages = {
                "Seb Headers",
                "You can add a lot",
                "You limit is what looks good.",
                "The code should accept unlimited rows of text, maybe don't push it though. I think I have only used up to 6"
            },
            params = {
                event = "not8bit-menu:client:testMenu2",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Sub Menu Button",
            icon = 'image.png',
            messages = {
                "Something relevant",
                "Something relevant"
            },
            disabled = true,
            params = {
                event = "not8bit-menu:client:testMenu2",
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Sub Menu Button",
            icon = 'image.png',
            messages = {
                "Something relevant",
                "Something relevant"
            },
            isDisabled = true,
            params = {
                event = "not8bit-menu:sever:yourserversidefunction",
                isServer = true,
                args = {
                    number = 1,
                }
            }
        },
        {
            header = "Sub Menu Button",
            icon = 'image.png',
            messages = {
                "Something relevant",
                "Something relevant"
            },
            disabled = true,
            params = {
                event = 'id',
                isCommand = true,
            }
        },
    }
    exports['not8bit-menu-standalone']:openMenu(containerMenu) --Use only one
	TriggerEvent('not8bit-menu:client:openMenu', containerMenu) -- Use only one
end)

```
# License
```
    Not 8 Bit Menu - Standalone
    Copyright (C) 2023  lllHolidaylll

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
# This is a modified version of:

# QB-Menu 
**https://github.com/qbcore-framework/qb-menu/tree/main**