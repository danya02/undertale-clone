0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Why do I look like a weird&  black sausage^1?&* Just the angle./%%"
    if !(== self.room 190s) goto 0x0000B0
0x000068:
    stog.msg[0s] = "* As a youth^1, I would sneak&  out to play by this creepy&  flaming pit./"
    stog.msg[1s] = "* Since the CORE is always&  re-arranging^1, it was like&  a game trying to find it./"
    stog.msg[2s] = "* Now it is my special place^1.&* It is nice for cooking s'mores&  and things like that./%%"
0x0000B0:
    if !(== self.room 191s) goto 0x00010C
0x0000C4:
    stog.msg[0s] = "* We were hired by Mettaton&  to destroy you./"
    stog.msg[1s] = "* But since he never paid us^1,&  we all decided to quit./"
    stog.msg[2s] = "* No hard feelings./%%"
0x00010C:
    if !(== self.room 194s) goto 0x000150
0x000120:
    stog.msg[0s] = "* Zzzzzzz.../"
    stog.msg[1s] = "* (It's taking a nap.)/%%"
0x000150:
    if !(== self.room 208s) goto 0x000194
0x000164:
    stog.msg[0s] = "* Why do I look like a black&  sausage and not a knight&  or a wizard?/"
    stog.msg[1s] = "* Well..^1.&* Everyone has an angle they&  look best from../%%"
0x000194:
    if !(== self.room 204s) goto 0x0001F0
0x0001A8:
    stog.msg[0s] = "* The core is made up of&  interchangable rooms./"
    stog.msg[1s] = "* Before you came here^1, the&  layout was altered so you&  would get lost and perish./"
    stog.msg[2s] = "* Yes^1. Just for you^1.&* Do you feel special?/%%"
0x0001F0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000230:
    exit
