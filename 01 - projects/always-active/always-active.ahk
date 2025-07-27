#SingleInstance Force
SetTimer, MoveMouse, 60000  ; Move mouse every 60 seconds (1 minute)
return

MoveMouse:
    ; Define points to move between (x, y coordinates)
    point1X := 100
    point1Y := 100
    
    point2X := 300
    point2Y := 300
    
    point3X := 500
    point3Y := 200
    
    ; Get current mouse position
    MouseGetPos, currentX, currentY
    
    ; Choose next point based on current position
    if (A_Index = 1 || (currentX = point3X && currentY = point3Y))
        MouseMove, %point1X%, %point1Y%, 5  ; Move to point 1 with speed 5
    else if (currentX = point1X && currentY = point1Y)
        MouseMove, %point2X%, %point2Y%, 5  ; Move to point 2
    else
        MouseMove, %point3X%, %point3Y%, 5  ; Move to point 3
        
    ; Optional small movement to make it more noticeable
    Sleep, 100
    MouseMove, 10, 0, 1, R  ; Move 10 pixels right relative to current position
    Sleep, 100
    MouseMove, -10, 0, 1, R  ; Move 10 pixels left relative to current position
    
    return

; Press Ctrl+Alt+P to pause/unpause the mouse movement
^!p::
    static paused = 0
    paused := !paused
    
    if (paused) {
        SetTimer, MoveMouse, Off
        ToolTip, Mouse movement paused
        SetTimer, RemoveToolTip, 2000
    } else {
        SetTimer, MoveMouse, 60000
        ToolTip, Mouse movement resumed
        SetTimer, RemoveToolTip, 2000
    }
    return
    
RemoveToolTip:
    ToolTip
    return

; Press Ctrl+Alt+X to exit the script
^!x::ExitApp