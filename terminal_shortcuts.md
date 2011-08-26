### Shortcut                Action
CTRL + A                Move to the beginning of the line <br />
CTRL + E                Move to the end of the line <br />
CTRL + [left arrow]     Move one word backward (on some systems this is ALT + B) <br />
CTRL + [right arrow]    Move one word forward (on some systems this is ALT + F) <br />
CTRL + U (bash)         Clear the characters on the line before the current cursor position <br />
CTRL + U (zsh)          If you're using the zsh, this will clear the entire line <br />
CTRL + K                Clear the characters on the line after the current cursor position <br />
ESC + [backspace]       Delete the word in front of the cursor <br />
CTRL + W                Delete the word in front of the cursor <br />
ALT + D                 Delete the word after the cursor <br />
CTRL + R                Search history <br />
CTRL + G                Escape from search mode <br />
CTRL + _                Undo the last change <br />
CTRL + L                Clear screen <br />
CTRL + S                Stop output to screen <br />
CTRL + Q                Re-enable screen output <br />
CTRL + C                Terminate/kill current foreground process <br />
CTRL + Z                Suspend/stop current foreground process <br />
### Command              Action
!!                      Execute last command in history <br />
!abc                    Execute last command in history beginning with abc <br />
!abc:p                  Print last command in history beginning with abc <br />

### History Search
Press CTRL + R to search through the history. <br />Continue pressing CTRL + R until you find the entry you're looking for. <br />Press [ENTER] to execute the current expression. <br />Press [Right Arrow] to modify the current expression. <br />Press CTRL + G to escape from search mode.
### Special setup for Mac OS X
Go to Terminal -> Preferences -> Settings -> Keyboard

    To enable the use of the ALT or OPTION key, select use option as meta key
    To enable the CTRL + [left arrow] and CTRL + [right arrow] shortcuts, select
        control cursor left and set it to \033b and
        control cursor right and set it to \033f.
