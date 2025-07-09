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
	If SendEactive
		SetTimer SendE, 5000 ;spams every 200ms
	Else
		SetTimer SendE, Off
Return

SendE: ;spams key e
	Send, {f}
	sleep 330
	Send, {f}
	sleep 330
	Send, {f}
	sleep 330
	Send, {t}
	sleep 20
	Send {MButton}
Return

F3:: ;On/Off with key F1
	SendFactive := !SendFactive
	If SendFactive
		SetTimer SendF, 2220 ;spams every 200ms
	Else
		SetTimer SendF, Off
Return

SendF: ;spams key f
	Send, {f}
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