#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InputLevel 2

stutterLetters := ["b", "c", "d", "f", "g", "h", "j", "k", "w", "m", "n", "p", "q", "s", "t", "v"]
for letter in stutterLetters
{
  hotstringName := ":X?*: " . stutterLetters[letter]
  fn := Func("sendStutter")
  fnb := fn.Bind(stutterLetters[letter])
  Hotstring(hotstringName, fnb)
}

sendStutter(letter) {
  SendLevel 1
  Random, num, 0.0, 1.0
  if (num < 0.2) {
    sendData := " " . letter . "-"
    SendEvent %sendData%
    SendEvent %letter%
  } else {
    SendEvent {Space}
    SendEvent %letter%
  }
  return
}

#InputLevel 0
^!o::Suspend

:?*:l::
SendLevel 2
SendEvent w
return

:?*:r::
SendLevel 2
SendEvent w
return

:?*:th::
SendLevel 2
SendEvent ff
return

:?*:na::
SendLevel 2
SendEvent nya
return

:?*:no::
SendLevel 2
SendEvent nyo
return

:?*B0:au::
SendLevel 2
Send w
return

:*:o ::
SendLevel 2
sendData := "oe "
SendEvent %sendData%
return

:?*:!::
ends := [" UwU", " OwO", " x3", " murr~", " *gwomps*", " *pounces on you*", " ^w^", " >w<", " (´• ω •`)", " (・ω・)", " >//<"]
Random, num, 1, ends.Length()
sendData := ends[num]
SendInput %sendData%
return 
 
:?*::)::
ends := [":3", ">:3", "^w^"]
Random, num, 1, ends.Length()
sendData := ends[num]
SendInput %sendData%
return 

:?*::D::
ends := [">w<"]
Random, num, 1, ends.Length()
sendData := ends[num]
SendInput %sendData%
return

:?*:>:(::
ends := ["(・`ω´・)", "ÒwÓ", "(・`ω´・)", "(｡>ω<｡)"]
Random, num, 1, ends.Length()
sendData := ends[num]
SendInput %sendData%
return

:?*::(::
ends := ["TwT", "uwu"]
Random, num, 1, ends.Length()
sendData := ends[num]
SendInput %sendData%
return 

:?*:.::~

:*:hecko::henwo

:*:hey ::henwo `

:*:sup ::henwo `

:*:ike ::ikey wike `

:*:ffat::dat

:*:ffis::dis

:*:wove::wuv

:*:mw::mistuh

:*:dog::doggo

:*:cat::kitteh

:*:heww::
SendLevel 2
SendEvent heck
return

:*:fuck::fwick

:*:shit::shoot

:*:fwiend::fwend

:*:ffe::the

:*:stop::stawp

:*:god::gosh

:*:weww::wew

:*:dick::peepee

:*:penis::peepee

:*:omg::oh my gosh

:*:wtf::wat the fwick

:*:what::wat

:*:wittwe::widdwe

:*:shut up::shush

:*:bitch::jewk

:c*:wmao::
outString := ""
refString := "asdfjklgh"
Random, keyNum, 10, 20
Loop %keyNum% {
  Random, charNum, 1, StrLen(refString)
  outString := outString . SubStr(refString, charNum, 1)
}
SendInput %outString%
return

:c*:wMAO::
outString := ""
refString := "ASDFGHJKL"
Random, keyNum, 10, 20
Loop %keyNum% {
  Random, charNum, 1, StrLen(refString)
  outString := outString . SubStr(refString, charNum, 1)
}
SendInput %outString%
return

#InputLevel 2
