!Home::Suspend ;

2::Buff() ;
#4::Fastrun() ;
#3::Fastjump() ;
#RButton::Cast() ;
#e::Cast() ;
f::SettingBoss() ;
Space::MousePress() ;
p::MouseOn() ;

F4:: ;On/Off with key F1
	SendEactive := !SendEactive
	If SendEactive
		SetTimer SendE, 10000 ;spams every 200ms
	Else
		SetTimer SendE, Off
Return

SendE: ;spams key e
	Send, {8}
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

Curse(){
	Send {p}
	Send {t}
	sleep 455
	Send {v}
	sleep 125
	Send {v}
	sleep 125
	Send {v}
	sleep 150
	Send {v}
	return
}

SettingBoss(){
	Send {t}
	sleep 300
	Send, {w}
	sleep 310
	Send, {r}
	sleep 310
	Send, {f}
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