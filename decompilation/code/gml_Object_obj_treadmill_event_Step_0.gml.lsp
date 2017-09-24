0x000000:
    if !(== self.con 1s) goto 0x000020
0x000014:
    global.interact = 1s
0x000020:
    if !(== self.con 2s) goto 0x0001D0
0x000034:
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 3s
    global.msc = 0s
    stog.msg[0s] = "HEY^1, SANS^1, HAVE&YOU SEEN MY.../"
    stog.msg[1s] = "\\E0OH, HELLO^1.&YOU AREN'T SANS./"
    stog.msg[2s] = "\\E3WAIT A SECOND./"
    stog.msg[3s] = "\\E0WHY WERE YOU USING&A TREADMILL IN&THE DARK?/"
    stog.msg[4s] = "\\E3IS SANS PRANKING&YOU ACROSS TIME&AND SPACE?/"
    stog.msg[5s] = "\\E1I HATE IT WHEN&HE DOES THAT!/"
    stog.msg[6s] = "\\E1HOW IMMATURE CAN&YOU GET?/"
    stog.msg[7s] = "\\E3ALSO^1, HAVE YOU&SEEN MY ACTION&FIGURES?/"
    stog.msg[8s] = "\\E0WAIT^1!&I KNOW WHERE TO&LOOK!!!/"
    stog.msg[9s] = "IN MY COLLECTION^1!&NYEH HEH HEH!!!/"
    stog.msg[10s] = "SOMETIMES^1, I'M A&GENIUS^1.&ALL THE TIME./%%"
    push 1043s
    stog.sprite_index* = (int32 self.mc)
    self.d = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    push 0s
    stog.side* = (int32 self.d)
    self.con = 3s
0x0001D0:
    if !(== self.con 3s) goto 0x000200
0x0001E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000204
0x000200:
    push 0s
0x000204:
    if !pop goto 0x000278
0x000208:
    push 5s
    stog.vspeed* = (int32 self.pap)
    push 1313s
    stog.sprite_index* = (int32 self.pap)
    push 0.5d
    stog.image_speed* = (int32 self.pap)
    self.con = 4s
    stog.alarm[4s] = 30s
0x000278:
    if !(== self.con 5s) goto 0x0003B8
0x00028C:
    push 0.25d
    stog.image_speed* = (int32 self.mc)
    stog.y* = (+ (int32 self.mc):y 2s)
    if !(>= (int32 self.mc):y 1570.y) goto 0x0003B8
0x0002F8:
    push (int32 self.mc)
    [obj_mainchara].visible = 1s
    pushenv (int32 self.mc) 0x000320
0x000314:
    call (instance_destroy[]:int32 )
0x000320:
    popenv 0x000314
0x000324:
    self.con = 6s
    global.interact = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x000378
0x000358:
    global.currentsong = (caster_load[]:int32 (var "music/muscle.ogg"))
    goto 0x000394
0x000378:
    global.currentsong = (caster_load[]:int32 (var "music/reunited.ogg"))
0x000394:
    call (caster_loop[]:int32 (var 1s) (var 1s) global.currentsong)
0x0003B8:
    exit
