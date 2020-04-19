#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#InputLevel 0

:?*:l::
SendLevel 1
SendEvent w
return

:?*:r::
SendLevel 1
SendEvent w
return

:?*B0:au::
SendLevel 1
Send w
return

:*:o ::
SendLevel 1
sendData := "oe "
SendEvent %sendData%
return

:?*:!::
ends := [" UwU", " OwO", " x3", " (*≧▽≦)", " murr~", " *gwomps*"]
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
ends := ["(・`ω´・)", "ÒwÓ"]
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

:*:that::dat

:*:wove::wuv

:*:mw::mistuh

:*:dog::doggo

:*:cat::kitteh

:*:heww::
SendLevel 1
SendEvent heck
return

:*:fuck::fwick

:*:shit::shoot

:*:fwiend::fwend

:*:stop::stawp

:*:god::gosh

:*:weww::wew

:*:dick::peepee

:*:penis::peepee

:c*:wmao::
outString := ""
refString := "lkasdjflkasdjlfakjsdlflasdkjflalkdjflkaalskdfsdfkajsddlfja"
Random, keyNum, 10, 20
Loop %keyNum% {
  Random, charNum, 1, StrLen(refString)
  outString := outString . SubStr(refString, charNum, 1)
}
SendInput %outString%
return

:c*:wMAO::
outString := ""
refString := "KALJDLFAJSDKFAJLSKDFJADFJLSADJFLASJFJASLDJFLASDDFASDLFAKDF"
Random, keyNum, 10, 20
Loop %keyNum% {
  Random, charNum, 1, StrLen(refString)
  outString := outString . SubStr(refString, charNum, 1)
}
SendInput %outString%
return
