!Home::Suspend ;

2::Buff() ;
#4::Fastrun() ;
#3::Fastjump() ;
#RButton::Cast() ;
#e::CombatCry() ;
XButton1:: CombatCry() ;
XButton2:: FullCry() ;
Space::MousePress() ;
p::MouseOn() ;

F4:: ;On/Off with key F1
	SendEactive := !SendEactive
	If (SendEactive) {
		SetTimer SendE, 4500 ;spams every 200ms
		ToolTip, Send E active
		SetTimer, RemoveToolTip, 2000
	} Else {
		SetTimer SendE, Off
		ToolTip, Send E paused
		SetTimer, RemoveToolTip, 2000
	}
Return

SendE: ;spams key e
	Send, {q}
	sleep 330
	Send {MButton}
	sleep 20
	Send, ^e
Return

F3:: ;On/Off with key F1
	SendFactive := !SendFactive
	If (SendFactive) {
		SetTimer SendF, 50 ;spams every 200ms
		ToolTip, Send click active
		SetTimer, RemoveToolTip, 2000
	} Else {
		SetTimer SendF, Off
		ToolTip, Send click paused
		SetTimer, RemoveToolTip, 2000
	}
Return

SendF: ;spams key f
	Send, {q}
Return

; function list
MousePress(){
	SendInput {LButton Down}
	return
}

MouseOn(){
	SendInput {LButton Up}
	return
}

Buff(){
	Send {1}
	Send {3}
	Send {6}
	Send {4}
	Send {5}
	return
}

Fastrun(){
	Send {7}
	Send {MButton}
	return
}

CombatCry(){
	Send, ^w
	sleep 263
	Send, ^r
	sleep 263
	Send, ^t
	sleep 263
	Send, ^e
	sleep 263
	Send, ^q
	return
}

FullCry(){
	Send {t}
	sleep 263
	Send, ^w
	sleep 263
	Send, ^r
	sleep 263
	Send, {f}
	sleep 263
	Send, ^t
	sleep 263
	Send, ^e
	sleep 263
	Send, ^q
	return
}

Fastboom(){
	Send {8}
	sleep 200
	Send {D}
	return
}

Fastjump(){
	Send {MButton}
	sleep 200
	Send {D}
	sleep 200
	Send {9}
	return
}

Cast(){
	Send {t}
	sleep 500
	Send {9}
	return
}

SendInstantSill(){
	SendInput {Joy5 Down}
	SendInput {Joy1 Down}
	sleep 50
	SendInput {Joy1 Up}
	SendInput {Joy5 Up}
	return
}

RemoveToolTip:
	ToolTip
return