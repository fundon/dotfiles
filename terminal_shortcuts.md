### Shortcut                Action
CTRL + A                Move to the beginning of the line
CTRL + E                Move to the end of the line
CTRL + [left arrow]     Move one word backward (on some systems this is ALT + B)
CTRL + [right arrow]    Move one word forward (on some systems this is ALT + F)
CTRL + U (bash)         Clear the characters on the line before the current cursor position
CTRL + U (zsh)          If you're using the zsh, this will clear the entire line
CTRL + K                Clear the characters on the line after the current cursor position
ESC + [backspace]       Delete the word in front of the cursor
CTRL + W                Delete the word in front of the cursor
ALT + D                 Delete the word after the cursor
CTRL + R                Search history
CTRL + G                Escape from search mode
CTRL + _                Undo the last change
CTRL + L                Clear screen
CTRL + S                Stop output to screen
CTRL + Q                Re-enable screen output
CTRL + C                Terminate/kill current foreground process
CTRL + Z                Suspend/stop current foreground process
### Command              Action
!!                      Execute last command in history
!abc                    Execute last command in history beginning with abc
!abc:p                  Print last command in history beginning with abc

### History Search
Press CTRL + R to search through the history. Continue pressing CTRL + R until you find the entry you're looking for. Press [ENTER] to execute the current expression. Press [Right Arrow] to modify the current expression. Press CTRL + G to escape from search mode.
### Special setup for Mac OS X
Go to Terminal -> Preferences -> Settings -> Keyboard

    To enable the use of the ALT or OPTION key, select use option as meta key
    To enable the CTRL + [left arrow] and CTRL + [right arrow] shortcuts, select
        control cursor left and set it to \033b and
        control cursor right and set it to \033f.

