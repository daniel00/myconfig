;global variables
mode := "windows"




GroupAdd, NoteSpace, ahk_class Notepad
GroupAdd, NoteSpace, ahk_class IEFrame


; GroupAdd, Editor, ahk_exe Code.exe
; GroupAdd, Editor, ahk_exe devenv.exe
; GroupAdd, Editor, ahk_exe gvim.exe
; GroupAdd, Editor, ahk_exe Explorer.exe
; GroupAdd, Editor, ahk_exe chrome.exe

GroupAdd, EXPLORER, ahk_exe Q-dir.exe
GroupAdd, EXPLORER, ahk_class CabinetWClass 
; GroupAdd, EXPLORER, ahk_exe SearchUI.exe 
; GroupAdd, EXPLORER, ahk_exe Explorer.exe 

GroupAdd, NPP, ahk_exe notepad.exe
return

SetTitleMatchMode, 2






;Global hotkeys
;======================================================================
^;::Send {Esc}				;Ctrl+;
LCtrl & '::AltTab			;Ctrl+' / switch windows , Alt-Tab, Ctrl-;

^\::WinClose,    A
;!m::WinMaximize, A         ;Maximize Active Window
;!n::WinMinimize, A         ;Minimize Active Window
;!u::WinRestore,  A

;======================================================================





#IfWinActive, ahk_class TaskSwitcherWnd
h::left
j::down
k::up
l::right
#IfWinExist

#IfWinExist ahk_class  MultitaskingViewFrame 
h::left
j::down
k::up
l::right
#IfWinExist

#IfWinActive, ahk_exe Taskmgr.exe
; h::Send, Left
; j::Send, Down
; k::Send, Up
; l::Send, Right
j:: Send {Down}
k:: Send {Up}
h:: Send {Left}
l:: Send {Right}
; n:: Send {Down}
; p:: Send {Up}
#IfWinActive

; #IfWinActive ahk_group Broweser
; ; ^d::MsgBox, in chrome
; ^j:: Send {BS}
; ^k:: Send {Del}
; ^h:: Send {Left}
; ^l:: Send {Right}

; ^n:: Send {Down}
; ^p:: Send {Up}
; ^u:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
; #IfWinActive


; #IfWinActive ahk_class CabinetWClass ahk_exe Q-dir.exe
; #IfWinActive ahk_group EXPLORER
; #IfWinActive ahk_class CabinetWClass

;     ^j::Send { Down }
;     ^k::Send {Up}
;     ^u::Send !{ Up }

;     ^h::Send {PgDn}
;     ^l::Send {PgUp} 

;     ;New folder Ctrl + Shift + n
;     ; F4::^+n
; #IfWinActive



; #IfWinActive, ahk_class #32770
; ^h:: Send {Left}
; ^j:: Send {BS}
; ^l:: Send {Right}
; ^u:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
; #IfWinActive 


; #IfWinActive, ahk_class Notepad ahk_class IEFrame
; #IfWinActive, ahk_group NoteSpace 
; ^h::Send {Left} 
; ^j::Send {Down}
; ^k::Send {Up}
; ^l::Send {Right}
; ^u:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
; ^o:: Send {End}{Enter}
; #IfWinActive 

; #IfWinActive,  ahk_exe searchUI.exe
; ^h::Send {Left} 
; ^j::Send {Down}
; ^k::Send {Up}
; ^l::Send {Right}

; ^u:: Send {Home}{ShiftDown}{End}{Right}{ShiftUp}{Del}
; #IfWinActive 






; :*?:ab::
; KeyWait, c, T1
; if ErrorLevel
; MsgBox, timeout
; else
; Send, ab
; return


; :*?:##npp::
; Run, notepad++.exe
; return

;end of autohotkey file

;google search Win+C
; #c::
; {
;     Run, http://www.google.com
;     return
; }
; #v::
; {
;     Run, devenv.exe
;     return
; }
; ; `;&s::
; :*b3:;;;::
; {
;     Run, Code.exe
;     return
; }
; #q::
; {
;     ; #IfWinNotExist 이걸로 하면 안된다...
;     IfWinNotExist, ahk_exe Q-dir.exe
;     {
;         MsgBox, Q-dir not exist
;         Run, Q-dir.exe
;     }
;     return
; }




; example by help doc
; ~[::
; Input, UserInput, V T5 L4 C, {enter}.{esc}{tab}, btw,otoh,fl,ahk,ca
; if (ErrorLevel = "Max")
; {
;     MsgBox, You entered "%UserInput%", which is the maximum length of text.
;     return
; }
; if (ErrorLevel = "Timeout")
; {
;     MsgBox, You entered "%UserInput%" at which time the input timed out.
;     return
; }
; if (ErrorLevel = "NewInput")
;     return
; If InStr(ErrorLevel, "EndKey:")
; {
;     MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
;     return
; }
; ; Otherwise, a match was found.
; if (UserInput = "btw")
;     Send, {backspace 4}by the way
; else if (UserInput = "otoh")
;     Send, {backspace 5}on the other hand
; else if (UserInput = "fl")
;     Send, {backspace 3}Florida
; else if (UserInput = "ca")
;     Send, {backspace 3}California
; else if (UserInput = "ahk")
;     Run, https://autohotkey.com
; return







; ;Input Test
; ; `;`;::

; ; ~~::
; :*?:jj::

; :*?:;;::
; :*b2://::
; :*b2:{space}{space}::
; Input, UserInput, V T5 L4 C, {Enter}.{Esc}{Tab}, btw, otoh, fl, ahk, ca, npp
;very important no space each user command!!!!!

; :*b2://::
; F4::
; Input, UserInput, V T5 L4 C, {enter}.{esc}{tab},btw,ahk,npp,goo,r,e,d,m,l,qd
; if (ErrorLevel = "Max")
; {
;     MsgBox, You entered "%UserInput%", which is the maximum length of text.
;     return
; }
; if (ErrorLevel = "Timeout")
; {
;     MsgBox, You entered "%UserInput%" at which time the input timed out.
;     return
; }
; if (ErrorLevel = "NewInput")
;     return
; if InStr(ErrorLevel, "EndKey:")
; {
;     MsgBox, You entered "%UserInput%" and terminated the input with %ErrorLevel%.
;     return
; }

; ;otherwise , a match was found
; if (UserInput = "btw")
;     Send, {BackSpace 4}by the way
; else if (UserInput = "ahk")
;     Run, https://autohotkey.com
; else if (UserInput = "npp")
;     Run, notepad.exe         ;notepad
; else if (UserInput = "goo")
;     Run, https://google.com/
; else if (UserInput = "r")
;     Send, #r               ;run
; else if (UserInput = "e")
;     Send, #e               ;explorer
; else if (UserInput = "d")
;     Send, #d               ;Win+D, Minimize Window
; else if (UserInput = "l")
;     Send, ~#l            ;Win+L, Not Working...
; else if (UserInput = "qd")
;     Run, Qdir.exe

; Send, {space 1}
; return


;context menu
; #IfWinActive, ahk_exe, explorer.exe
; !r::AppsKey
; #IfWinActive


::;eml::yookeunsik@naver.com
:*:;con::Console.WriteLine("");{Left 3}

::;npp::
Run, notepad.exe
return

::;eve::
Run, everything.exe
return

::]npp::
WinClose ahk_group NPP
return




:*b3:;;;::
InputBox, aa
if (aa = "npp")
    Run, notepad.exe
else if (aa = "code")
    Run, code.exe
else if (aa = "hyp")
    Run, hyper.exe
else if (aa = "cmd")
    Run, cmd.exe
else if (aa = "eve")
    Run, everything.exe
else if (aa = "vs7")
    Run, devenv.exe
else if (aa = "ee")
    Run, explorer.exe
else if (aa = "ahk")
	Run,  gvim.exe %A_ScriptFullPath%
else if (aa = "goo")
    Run, http://google.com
else if (aa = "nav")
    Run, http://naver.com
else if (aa == "sam")
    Run, iexplore.exe http://www.samsung.net
else if (aa = "dyoo")
    Run, D://yoo
else if (aa = "dwork")
    Run, D://yoo//work
else if (aa = "ddoc")
    Run, %A_MyDocuments%
else if (aa = "duser")
    Run, C://users//yoo
else if (aa = "dstart")
    Run, "C:\Users\yoo\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
else if (aa = "qnpp")
    WinClose ahk_group NPP
else if (aa = "rld")
{
    MsgBox, reload script OK, %A_ScriptFullPath%
    Reload
}
else
	MsgBox, Undefined Cmd : %aa%
return


:*?:;log::geunsik.yoo{Tab}daniel00*{Enter}
:*?:;yoo::유근식
:*?:;pwd;::sdi-4784{Enter}
:*?:;eml::yookeunsik@naver.com
:*?:;안녕::안녕하세요 생기연 유근식 입니다.

:*?:;arrup::↑
:*?:;arrdn::↓
:*?:;arrri::→
:*?:;arrle::←
:*?:;cwl::Console.WriteLine("");{Left 3}


;delete all
:*?:;da:: 
Send, ^a
Sleep 10
Send, ^c
Send, { Del } 
return

;view cached page in chrome
; ^+l::
; Send, !d
; Sleep, 10
; Send, {Home}
; Sleep, 10
; Send, cache:{enter}



;^h::Send {Left} 
;^j::Send {Down}
;^k::Send {Up}
;^l::Send {Right}


;================================================================================
;fast switch task, 윈도우 창을 빠르게 스위치 하는 단축키
;================================================================================

^0::	;Ctrl+0 : chrome
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe
if WinActive("ahk_exe chrome.exe")
	Send ^{tab}   ;switch chrome tabs
else
{
	WinActivate ahk_exe chrome.exe
}
Return

^9::	;Ctrl+9 : explorer
IfWinNotExist, ahk_class CabinetWClass
	Run, explorer.exe
GroupAdd, G_EXPLORER, ahk_class CabinetWClass
if WinActive("ahk_exe explorer.exe")
	GroupActivate, G_EXPLORER, r
else
{
	WinActivate ahk_class CabinetWClass
}
return

^8::	;Ctrl+8 vifm
IfWinNotExist, ahk_exe vifm.exe
	Run, vifm.exe
WinActivate ahk_exe vifm.exe
return


^7::
IfWinNotExist, ahk_exe devenv.exe
    Run, devenv.exe
WinActivate ahk_exe devenv.exe 
; Send !{W}{W}
; Send Enter
Send {Tab}
return

^5::
IfWinNotExist, ahk_exe gvim.exe
    Run, gvim.exe
WinActivate ahk_exe gvim.exe 
return

    
;================================================================================

; #IfWinActive ahk_exe devenv.exe
; !.::
; Send, !{ w }
; Sleep 10
; Send, { w }
; Sleep 10
; Send, {Enter}
; #If


#IfWinActive ahk_exe chrome.exe
^h::Send ^+{tab}	;previous tab
^l::Send ^{tab}		;next tab
^n::Send {n}{z}{z}
^j::Send {Down}
^k::Send {Up}
; ^n::Send {Down}
; ^p::Send {Up}

;same above action to Function Keys
F1::Send ^+{tab}	;previous tab
F2::Send ^{tab}		;next tab
F3::Send ^w			;close tab
#IfWinActive


#IfWinActive ahk_exe notepad++.exe
F1::Send ^{PgUp}
F2::Send ^{PgDn}	;previous tab
F3::Send ^w			;close current tab
F4::Send ^W			;close all tab
#IfWinActive

#IfWinActive ahk_exe devenv.exe
^n::Send {Down}
^p::Send {Up}
#IfWinActive 

;vim mode test
; LCtrl & Tab::
; RCtrl::
; ; ^Space::   ;Ctrl + Space
; if (mode=="windows")
; {
;     mode := "vim_normal"
;     ; SetCapsLockState, On
;     SetScrollLockState, On
;     ; MsgBox, current mode is vim_normal
; }
; else if (mode == "vim_normal")
; {
;     mode := "windows"
;     ; SetCapsLockState, Off
;     SetScrollLockState, Off
;     ; MsgBox, current mode is windows
; }
; return

; #If (mode == "vim_normal")
; h::Left
; j::Down
; k::Up
; l::Right

; n::PgDn
; p::PgUp

; ; g::Run, gvim.exe
; ; e::Run, everything.exe
; #If

; g::
; if (GetKeyState(ScrollLock, "P"))
; MsgBox, gg
; return

; g & g::
; if (mode=="vim_normal")
; Send, {Home}
; return

;한영전환
+space::
Send {vk15}
