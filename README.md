# not8bit-menu
Menu System for FiveM

# To Do:
```
Update text layout
Add ability to change theme easier if doesn't bloat code for no reason
Add QB Core command functionality back under boolean control
ESX?
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
            messages = {
                "SUb Headers",
                "You can add a lot",
                "You limit is what looks good.",
                "The code should accept unlimited rowsa of text"
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
            messages = {
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
            messages = {
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
            messages = {
                "Something relevant"
            },
            disabled = true,
            params = {
                event = 'id',
                isCommand = true,
            }
        },
    }
    exports['not8bit-menu']:openMenu(containerMenu) --Use if you want to wait for this to finish opening
	TriggerEvent('not8bit-menu:client:openMenu', containerMenu) -- Use if you want the script to keep going while the menu opens
end)
```
# License
```
    Not 8 Bit Menu
    Copyright (C) 2023  Ronald Nelson

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

# NH Context
**[NH Context](https://forum.cfx.re/t/no-longer-supported-standalone-nerohiro-s-context-menu-dynamic-event-firing-menu/2564083)** by **[NeroHiro](https://github.com/nerohiro)**

# and

# QB-Menu 
**https://github.com/qbcore-framework/qb-menu/tree/main**