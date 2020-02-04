
SetTitleMatchMode 2

global variables
mode := "windows"

GroupAdd, NoteSpace, ahk_class Notepad
GroupAdd, NoteSpace, ahk_class IEFrame


GroupAdd, VIMGROUP, ahk_exe gvim.exe
GroupAdd, VIMGROUP, ahk_exe code.exe
GroupAdd, VIMGROUP, ahk_exe devenv.exe
; GroupAdd, VIMGROUP, ahk_exe chrome.exe
GroupAdd, VIMGROUP, ahk_exe whale.exe
GroupAdd, VIMGROUP, ahk_exe ccstudio.exe
GroupAdd, VIMGROUP, ahk_exe vifm.exe
GroupAdd, VIMGROUP, ahk_exe ubuntu.exe

GroupAdd, EXPLORER, ahk_exe Q-dir.exe
GroupAdd, EXPLORER, ahk_class CabinetWClass 
; GroupAdd, EXPLORER, ahk_exe SearchUI.exe 
; GroupAdd, EXPLORER, ahk_exe Explorer.exe 

GroupAdd, NPP, ahk_exe notepad.exe
return

#IfWinActive, ahk_class TaskSwitcherWnd
h::left
j::down
k::up
l::right
#IfWinActive

#IfWinActive ahk_class  MultitaskingViewFrame 
h::left
j::down
k::up
l::right
#IfWinActive

#IfWinActive, ahk_exe Taskmgr.exe
j:: Send {Down}
k:: Send {Up}
h:: Send {Left}
l:: Send {Right}
#IfWinActive



::;eml::yookeunsik@naver.com
:*:;con::Console.WriteLine("");{Left 3}

::;npp::
Run, notepad.exe
return

::;eve:: Run, everything.exe
return

::]npp::
WinClose ahk_group NPP
return




:*b3:;;;::
InputBox, aa
if (aa = "npp")
    Run, notepad.exe
else if (aa = "code")
    Run, C:\Users\Administrator\AppData\Local\Programs\Microsoft VS Code\Code.exe
else if (aa = "hyp")
    Run, hyper.exe
else if (aa = "cmd")
    Run, cmd.exe
else if (aa = "eve")
    Run, C:\Program Files\Everything\Everything.exe
else if (aa = "vs7")
    Run, devenv.exe
else if (aa = "ee")
    Run, explorer.exe
else if (aa = "ahk")
	Run,   C:\Program Files\Vim\vim81\gvim.exe %A_ScriptFullPath%
	; Run,   code.exe %A_ScriptFullPath%
else if (aa = "goo")
    Run, chrome.exe http://google.com
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
:*?:;aup::↑
:*?:;adn::↓
:*?:;ari::→
:*?:;ale::←



:*?:;c1::①
:*?:;c2::②
:*?:;c3::③
:*?:;c4::④
:*?:;c5::⑤
:*?:;c6::⑥
:*?:;wl::Console.WriteLine("");{Left 3}


;delete all
:*?:;da:: 
Send, ^a
Sleep 10
Send, ^c
Send, { Del } 
return

;view cached page in chrome
; ^+k::
; Send, !d
; Sleep, 10
; Send, {Home}
; Sleep, 10
; Send, cache:{enter}



;================================================================================
;fast switch task, 윈도우 창을 빠르게 스위치 하는 단축키
;================================================================================

; ^0::	;Ctrl+0 : chrome
; IfWinExist, ahk_exe chrome.exe
; {
; 	WinActivate
; 	WinMaximize
; }
; Run, chrome.exe http://www.google.com
; Return

^0::	;Ctrl+0 : chrome
IfWinNotExist, ahk_exe chrome.exe
	Run, chrome.exe http://www.google.com
if WinActive("ahk_exe chrome.exe")
	Send ^{tab}   ;switch chrome tabs
else
{
	WinActivate ahk_exe chrome.exe
}
return

^9::
IfWinExist, ahk_exe iexplore.exe
{
	; WinShow
	WinActivate
	WinMaximize
}
Run, iexplore.exe
Return

; ^9::
; IfWinNotExist, ahk_exe iexplore.exe
; {
; 	Run, iexplore.exe www.samsung.net
; }
; WinActivate, ahk_exe iexplore.exe
; ; WinMaximize, iexplore.exe
; return


^8::	;Ctrl+8 vifm
IfWinNotExist, ahk_exe vifm.exe
	Run, vifm.exe
WinActivate ahk_exe vifm.exe
return


^7::
SetTitleMatchMode, RegEx
IfWinExist, ahk_exe devenv.exe
{
	WinShow
	WinActivate
	Send,{Alt}{w}{W}{A}{Enter}
}
else
Run, devenv.exe
Return

^6::	;Ctrl+6 : explorer
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

^5::
IfWinNotExist, ahk_exe gvim.exe
    Run, gvim.exe
WinActivate ahk_exe gvim.exe 
return

^4::
IfWinNotExist, ahk_exe code.exe
    Run, code.exe
WinActivate ahk_exe code.exe 
return
    
^3::
IfWinNotExist, ahk_exe mySingleMessenger.exe
	Run, ahk_exe mySingleMessenger.exe
WinActivate, ahk_exe mySingleMessenger.exe
return


^2::
IfWinNotExist, ahk_exe Everything.exe
    Run, C:\Program Files (x86)\Everything\Everything.exe
WinActivate, ahk_exe Everything.exe
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
^j::Send {Down}
^k::Send {Up}
; ^n::Send {Down}
; ^p::Send {Up}
#IfWinActive

; #IfWinActive ahk_exe whale.exe
; ^h::Send ^+{tab}	;previous tab
; ^l::Send ^{tab}		;next tab
; ^j::Send {Down}
; ^k::Send {Up}
; ^n::Send {Down}
; ^p::Send {Up}
; #IfWinActive


; F3::Send ^w			;close tab
; #IfWinActive


#IfWinActive ahk_exe notepad++.exe
F1::Send ^{PgUp}
F2::Send ^{PgDn}	;previous tab
F3::Send ^w			;close current tab
F4::Send ^W			;close all tab
^j::Send {BS}
#IfWinActive

#IfWinActive ahk_exe devenv.exe
^n::Send {Down}
^p::Send {Up}
#IfWinActive 


;한영전환
+space::
Send {vk15}
return

RShift & Ctrl::
Send {Tab}
return


;Global hotkeys
;======================================================================
^i::Send {BS}

#IfWinNotActive, ahk_group VIMGROUP
^n:: Send {PgDn}
^m:: Send {PgUp}

^h:: Send {Left}
^j:: Send {Down}
^k:: Send {Up}
^l:: Send {Right}


; ^+h:: Send {Home}
; ^+j:: Send {PgDn}
; ^+k:: Send {PgUp}
; ^+l:: Send {End}

; ^p::Send {BS}
; ^o::Send ^{BS}
; ^`:: Send {Del}
#IfWinNotActive



^;::Send {Esc}
return

LCtrl & '::AltTab			;Ctrl+' / switch windows , Alt-Tab, Ctrl-;
return

;close activated window
^+\::WinClose,    A
return

;close all window
; ^+\::
; Send, #d
; Sleep 100
; Send, !{F4}
; return

LCtrl & RShift:: 
; msgbox, "ctrl shift"
Sleep 300
Send, {LWin}
return


;move and maxmize active window to left monitor
; #0::
; ; ^+0::
; Send #+{left}
; WinMaximize, A
; return

;move and maxmize active window to right monitor
; #2::
; Send #+{right}
; WinMaximize, A
; return
;======================================================================


;scroll Lockk
; ~Scrolllock & h:: Send {left}
; ~Scrolllock & j:: Send {down}
; ~Scrolllock & k:: Send {up}
; ~Scrolllock & l:: Send {right}
; return 




;==============================================================================
; #SingleInstance force
; SendMode Input
; SetCapslockState, AlwaysOff
; ~Capslock::
; 	Send {Ctrl DownTemp}{Shift DownTemp}{Alt DownTemp}{LWin DownTemp}
; 	KeyWait, Capslock
; 	Send {Ctrl Up}{Shift Up}{Alt Up}{LWin Up}
; 	if (A_PriorKey = "Capslock") {
; 		Send {Esc}
; 	}
; return

; ~Capslock & h:: Send {left}
; ~Capslock & j:: Send {down}
; ~Capslock & k:: Send {up}
; ~Capslock & l:: Send {right}

; ~Capslock & q:: Send {home}
; ~Capslock & e:: Send {end}
;==============================================================================

LAlt & h::
	WinMove,A,,0,0,1920,1080
	WinMaximize, A
return

LAlt & l::
	WinMove,A,,1920,0,1920,1080
	WinMaximize, A
return


; <!5:: 
; Send {f5}
; ; msgbox F5
; return

; ~A & H::
; 	Send #+{left}
; 	WinMaximize, A
; 	; Send {BS}
; return

; ~A & L::
; 	Send #+{right}
; 	WinMaximize, A
; 	; Send {BS}
; return





; SendMode Input
; a & h::
; 	Send #+{left}
; 	WinMaximize, A
; return

; a & l::
; 	Send #+{right}
; 	WinMaximize, A
; return


; #if GetKeyState("ScrollLock", "T")
; 	a::msgbox pressed 'a'
; #if

; ^/:: Send {ScrollLock}


;HHKB fn key as left ALT
; !i::Send {PrintScreen}
; !o::Send {Scrolllock}
; !p::Send {Pause}
; !k::Send {Home}
; !,::Send {End}
; LAlt & l::Send {PgUp}
; LALT & .::Send {PgDn}
; LALT & [::Send {Up}
; !;::Send {left}
; LALT & '::Send {right}
; LALT & /::Send {down}

; !t::
; TrayTip #1, test string
; sleep 2000
; return


;media keys
^+space::Send   {Media_Play_Pause}
^+j::Send   	{Volume_Down}
^+k::Send   	{Volume_Up}
^+m::Send  		{Volume_Mute}
^+h::Send        {left}
^+l::Send   		{right}
; ^+h::Send        {Media_Prev}
; ^+l::Send   		{Media_Next}

;global delete for HHKB
;해피해킹 키보드의 Backspace 위치가 Enter 바로 위에 있어서
;종종 백스패이스와 엔터를 잘못 누르는 경우가 있네
;일단 연습을 통해 익숙해져야 하겠지만 , 다른 방법으로 BS를 누르는 방법도 고안해 보자
