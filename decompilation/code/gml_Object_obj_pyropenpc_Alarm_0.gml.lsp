0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "* Haha^1, ha ha ha^1.&* Secret^1, secret^1.&* I've done up a trouble./"
    stog.msg[1s] = "* I set the lava on fire./"
    stog.msg[2s] = "* No one will EVER know^1.&* It's the perfect crime.../%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0000D0
0x0000A0:
    stog.msg[0s] = "* Haha^1, ha ha ha^1.&* If we leave^1, no one will&  REALLY ever know!!/%%"
    stog.msg[2s] = "* This crime just gets perfecter&  and perfecter./%%"
0x0000D0:
    if !(> self.talkedto 0s) goto 0x0000FC
0x0000E4:
    stog.msg[0s] = "* The lava's so spicey now./%%"
0x0000FC:
    if !(== self.room 165s) goto 0x0001D0
0x000110:
    stog.msg[0s] = "* Haha^1, ha ha ha^1.&* Ya wanna \"hang\" out?/"
    stog.msg[1s] = "* Haha^1, ha ha ha^1.&* Sorry^1, I'm all TIED UP!!!/"
    stog.msg[2s] = "* Psyche^1! Owned^1!&* No one wants to be MY&  friend!!!/%%"
    push -5s
    if !(== 7s:flag 1s) goto 0x0001A4
0x000174:
    stog.msg[0s] = "* Haha^1, ha ha ha^1.&* Wonder if any humans would&  wanna be my friend./"
    stog.msg[1s] = "* PSYYYYCHE^1!&* That'd NEVER happen!/%%"
0x0001A4:
    if !(> self.talkedto 0s) goto 0x0001D0
0x0001B8:
    stog.msg[0s] = "* I'm too spicey to have&  any friends./%%"
0x0001D0:
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.talkedto = (+ self.talkedto 1s)
0x000210:
    exit
