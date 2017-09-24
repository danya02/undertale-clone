0x000000:
    self.myinteract = 3s
    global.msc = 0s
    global.typer = 5s
    global.facechoice = 0s
    global.faceemotion = 0s
    stog.msg[0s] = "%%"
    if !(== self.room 117s) goto 0x000170
0x000068:
    stog.msg[0s] = "* (Doesn't seem like&  anyone's home.)/%%"
    push -5s
    if !(== 350s:flag 0s) goto 0x0000B4
0x00009C:
    push (bool (instance_exists[]:int32 (var 1026s)))
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000D4
0x0000BC:
    stog.msg[0s] = "* (If someone's there^1,&  they aren't answering&  the door.)/%%"
0x0000D4:
    push -5s
    if !(== 350s:flag 1s) goto 0x000108
0x0000F0:
    stog.msg[0s] = "* (No one is home.^1)&* (And you get the feeling&  no one ever will be.)/%%"
0x000108:
    push -5s
    if !(== 350s:flag 2s) goto 0x00013C
0x000124:
    stog.msg[0s] = "* (You hear irritated groans&  from the inside.)/%%"
0x00013C:
    push -5s
    if !(>= 389s:flag 2s) goto 0x000170
0x000158:
    stog.msg[0s] = "* (Sounds like only fire&  lives here now.)/%%"
0x000170:
    if !(== self.room 69s) goto 0x000198
0x000184:
    push (> self.x 200s)
    goto 0x00019C
0x000198:
    push 0s
0x00019C:
    if !pop goto 0x000214
0x0001A0:
    stog.msg[0s] = "* Who's there^1?&* I'm in the middle of&  my favorite TV program./"
    stog.msg[1s] = "* I know^1, I know..^1.&* Staring at a screen...&* Sounds like a boring hobby./"
    stog.msg[2s] = "* But TV offers an escape&  to another world^1.&* We really need that./%%"
    if !(> self.read 0s) goto 0x000214
0x0001FC:
    stog.msg[0s] = "* You wanna watch too^1?&* Sorry^1, this is a one-player&  TV show./%%"
0x000214:
    if !(== self.room 69s) goto 0x00023C
0x000228:
    push (< self.x 200s)
    goto 0x000240
0x00023C:
    push 0s
0x000240:
    if !pop goto 0x0002E0
0x000244:
    stog.msg[0s] = "* Ahh^1, what a beautiful knock..^1.!&* Maybe if I don't answer^1,&  I'll hear it again./%%"
    if !(== self.read 1s) goto 0x000288
0x000270:
    stog.msg[0s] = "* Ahh^1, my patience rewards me./%%"
0x000288:
    if !(> self.read 1s) goto 0x0002B4
0x00029C:
    stog.msg[0s] = "* Ahh.../%%"
0x0002B4:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x0002E0
0x0002C8:
    stog.msg[0s] = "* (No answer.)/%%"
0x0002E0:
    if !(== self.room 185s) goto 0x00038C
0x0002F4:
    if !(< self.x 166s) goto 0x000314
0x000308:
    global.msc = 860s
0x000314:
    if !(> self.x 240s) goto 0x000334
0x000328:
    global.msc = 862s
0x000334:
    if !(> self.x 300s) goto 0x000354
0x000348:
    global.msc = 864s
0x000354:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00038C
0x000368:
    global.msc = 0s
    stog.msg[0s] = "* (No answer.)/%%"
0x00038C:
    self.read = (+ self.read 1s)
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
0x0003CC:
    exit
