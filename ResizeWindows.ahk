;----------------------------------------------------------------
; AutoHotkey Version: 1.x
; Language:       English
; Author:         Lowell Heddings <geek@howtogeek.com>
; Description:    Resize Active Window
;
;----------------------------------------------------------------
;  EXAMPLES
;----------------------------------------------------------------
; Note: all examples using Alt+Win+U as the hotkey
;
; #!u::ResizeWin(800,600)
;    - Resize a window to 800 width by 600 height
;
; #!u::ResizeWin(640)
;    - Resize a window to 640 width, leaving the height the same
;
; #!u::ResizeWin(0,600)
;    - Resize a window to 600 height, leaving width the same
;
;----------------------------------------------------------------
#NoEnv

ResizeWin(Width = 0,Height = 0,Hor = 0,Vert = 0)
{
  WinGetPos,X,Y,W,H,A
  If %Width% = 0
    Width := W

  If %Height% = 0
    Height := H

  WinMove,A,,%Hor%,%Vert%,%Width%,%Height%
}

#1::ResizeWin(0995,1575,0,30)
#2::ResizeWin(1825,1575,987,30)
#3::ResizeWin(1050,1575,2797,30)