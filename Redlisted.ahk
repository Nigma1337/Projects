#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
 
f7::SetTimer, label, % (toggle := !toggle) ? 40 : "Off"
 
 
label:
loop, 120
{
    Click
    Sleep, 600
    MouseMove, 915, 334
    sleep, 100
    Click right
    sleep, 300
    MouseMove, 1080, 380
    sleep, 500
    Loop, 35
    {
        Click
        sleep, 300
    }
    Send {Esc}
    sleep, 200
    Send t
    sleep, 100
    Send {/}
    sleep, 100
    Send s
    sleep, 100
    Send b
    sleep, 100
    Send m
    sleep, 100
    Send e
    sleep, 100
    Send n
    sleep, 100
    Send u
    sleep, 100
    Send {Enter}
    sleep, 400
    MouseMove, 970, 446
    sleep, 200
    Click
    sleep, 400
    ;start of craftin first cobble WORKS
    send {shift down}
    MouseMove, 760, 640
    sleep, 100
    Click
    Loop, 4
    {
        sleep, 200
        MouseMove, 50, 0, 50, R
        sleep, 100
        Click
    }  
    MouseMove, 1079, 392
    sleep, 100
    Click
    ;first cobble done
    ;2nd obble start WORKS
    MouseMove, 1023, 652
    sleep, 100
    Click
    loop, 3
    {  
        sleep, 200
        MouseMove, 50, 0, 50, R
        sleep, 100
        Click
    }
    MouseMove, 747, 702
    sleep, 100
    Click
    sleep, 100
    MouseMove, 1076, 388
    sleep, 100
    Click
    ;2nd obble end
    sleep, 500
    MouseMove, 811, 704
    Click
    Loop, 4
    {
        sleep, 200
        MouseMove, 50, 0, 50, R
        Click
        sleep, 100
    }
    MouseMove 1076, 388
    sleep,100
    Click
    sleep, 300
    ;third obble done WORKS
    MouseMove 1079, 713
    Click
    sleep, 100
    Loop, 2
    {
        sleep, 200
        MouseMove, 50, 0, 50, R
        sleep, 100
        Click
    }
    sleep, 200
    MouseMove, 752, 751
    sleep, 100
    Click
    MouseMove, 50, 0, 50, R
    sleep, 100
    Click
    sleep, 100
    MouseMove 1076, 388
    sleep, 100
    Click
    sleep, 200
    ;end of fourth obble
    MouseMove 863, 759
    sleep, 100
    Click
    sleep, 200
    Loop, 4
    {
        sleep, 200
        MouseMove, 50, 0, 50, R
        Click
        sleep, 100
    }
    MouseMove 1076, 388
    sleep, 100
    Click
    sleep, 500
    ;end of fifth obble
    MouseMove, 1130, 748
    sleep, 100
    Click
    sleep, 100
    MouseMove, 50, 0, 50, R
    sleep, 100
    Click
    sleep, 100
    MouseMove 910, 819
    Click
    Loop, 2
    {
        sleep, 200
        MouseMove, 50, 0, 50, R
        sleep, 100
        Click
    }
    MouseMove 1076, 388
    sleep, 100
    Click
    sleep, 100
    ;end of sixth obble
    MouseMove 751, 818
    sleep, 100
    Click
    sleep, 100
    Loop, 2
    {
        sleep, 100
        MouseMove, 50, 0, 50, R
        sleep, 100
        Click
    }
    sleep, 100
    MouseMove 1080, 817
    sleep, 100
    Click
    sleep, 100
    MouseMove, 50, 0, 50, R
    sleep, 100
    Click
    sleep, 100
    MouseMove 1076, 388
    sleep, 100
    Click
    sleep, 100
    ;end of crafting
    Send {shift up}
    MouseMove, 970, 551
    sleep, 100
    Click
    sleep, 100
    MouseMove, 1120, 380
    sleep, 200
    Click
    sleep, 400
    MouseMove, 760, 570
    send {shift down}
    sleep, 400
    click
    sleep, 100
    Send {shift up}
    sleep, 100
    send {esc}
    sleep, 700
}
Send t
sleep, 100
Send {/}
sleep, 100
Send s
sleep, 100
Send b
sleep, 100
Send m
sleep, 100
Send e
sleep, 100
Send n
sleep, 100
Send u
sleep, 100
Send {Enter}
sleep, 500
MouseMove, 852, 546
sleep, 100
click
sleep, 1500
Send t
sleep, 100
Send {/}
sleep, 100
Send s
sleep, 100
Send b
sleep, 100
Send m
sleep, 100
Send e
sleep, 100
Send n
sleep, 100
Send u
sleep, 100
Send {Enter}
sleep, 600
;EC
MouseMove, 1131, 382
sleep, 100
click
sleep, 500
send {shift down}
sleep, 100
MouseMove, 750, 367
loop, 9
{
    sleep, 100
    click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
MouseMove, 749, 414
loop, 9
{
    sleep, 100
    click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
MouseMove, 753, 468
loop, 9
{
    sleep, 100
    click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
send {shift up}
sleep, 100
send {ESC}
sleep, 1000
;EC done
;deposit into normal 'chest' start
click right
sleep, 1000
MouseMove, 757, 641
sleep, 100
send {shift down}
loop, 9
{
    sleep, 100
    Click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
MouseMove, 747, 705
loop, 9
{
    sleep, 100
    click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
MouseMove, 742, 747
loop, 9
{
    sleep, 100
    click
    sleep, 100
    mouseMove, 50, 0, 10, R
}
sleep, 100
MouseMove 746, 816
loop, 8
{
    sleep, 100
    click
    sleep, 100
    MouseMove, 50, 0, 10, R
}
sleep, 100
click
sleep, 100
click
sleep, 100
send {shift up}
sleep, 100
send {esc down}
sleep, 100
send {esc up}
;depo into 'chest' done
;movement back to shop
sleep, 200
Send t
sleep, 100
Send {/}
sleep, 100
Send s
sleep, 100
Send b
sleep, 100
Send m
sleep, 100
Send e
sleep, 100
Send n
sleep, 100
Send u
sleep, 100
Send {Enter}
sleep, 500
MouseMove, 852, 546
sleep, 100
click
sleep, 1500
loop, 5
{
    sleep, 100
    MouseMove, 1000, 0, 10, R
    sleep, 300
}
MouseMove, 180, 0, 10, R
send {w down}
sleep, 5000
send {w up}
loop, 5
{
    MouseMove, 940, 0, 20, R
    sleep, 300
}
send {w down}
sleep, 8500
send, {Space down}
sleep, 500
send {space up}
sleep, 500
send {w up}
sleep, 100
send {s down}
sleep, 300
send {s up}
;movement to shop is done
return

f8::
ExitApp
Return