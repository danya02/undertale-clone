0x000000:
    if !(== self.con 0s) goto 0x000078
0x000014:
    if !(== self.switches 2s) goto 0x000078
0x000028:
    if !(< 1570.x 390s) goto 0x000078
0x00003C:
    if !(> 1570.x 380s) goto 0x000078
0x000050:
    if !(< 1570.y 90s) goto 0x000078
0x000064:
    push (== global.interact 0s)
    goto 0x00007C
0x000078:
    push 0s
0x00007C:
    if !pop goto 0x000194
0x000080:
    global.facechoice = 0s
    global.typer = 5s
    global.msc = 0s
    global.interact = 1s
    call (snd_play[]:int32 (var 104s))
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E3 \\F6 \\TA %"
    stog.msg[2s] = "\\E6* OK^1!&* Now press the third&  one!!!/%%"
    stog.msg[3s] = "\\TS \\F0 \\E0 \\T0 %"
    stog.msg[4s] = "* (Click...)/%%"
    global.plot = 140s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 0.1d
    stog.alarm[4s] = 28s
0x000194:
    if !(== self.con 1.1d) goto 0x0001CC
0x0001B0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001D0
0x0001CC:
    push 0s
0x0001D0:
    if !pop goto 0x0001EC
0x0001D4:
    self.con = 2s
    global.interact = 0s
0x0001EC:
    if !(== self.con 2s) goto 0x00026C
0x000200:
    if !(< 1570.x 280s) goto 0x00026C
0x000214:
    if !(== global.interact 0s) goto 0x00026C
0x000228:
    if !(< self.switches 3s) goto 0x00026C
0x00023C:
    if !(== self.won 0s) goto 0x00026C
0x000250:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000270
0x00026C:
    push 0s
0x000270:
    if !pop goto 0x00037C
0x000274:
    global.interact = 1s
    global.facechoice = 6s
    global.faceemotion = 3s
    global.typer = 47s
    global.msc = 0s
    stog.msg[0s] = "\\E1* ............./"
    stog.msg[1s] = "\\E2* ............./"
    stog.msg[2s] = "\\E0* H-h-hey!/"
    stog.msg[3s] = "\\E5* Looks like you!!!^1 &* Only needed to press^1!&* Two of them!!!/%%"
    stog.msg[4s] = "\\TS \\F0 \\E0 \\T0 %"
    stog.msg[5s] = "* (Click...)/%%"
    global.plot = 140s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x00037C:
    if (== self.con 3s) goto 0x0003DC
0x000390:
    if (== self.con 1s) goto 0x0003DC
0x0003A4:
    if (== self.con 0.1d) goto 0x0003DC
0x0003C0:
    push (== self.con 1.1d)
    goto 0x0003E0
0x0003DC:
    push 1s
0x0003E0:
    if !pop goto 0x0005DC
0x0003E4:
    if !(bool (instance_exists[]:int32 (var 782s))) goto 0x0005DC
0x0003FC:
    if !(== self.donkeykongismyfavoritemarvelsuperhero 0s) goto 0x000464
0x000410:
    push 782.writingx
    self.wrx = (- -1s 0s:view_xview)
    push 779.x
    self.dgx = (- -1s 0s:view_xview)
    self.donkeykongismyfavoritemarvelsuperhero = 1s
0x000464:
    if !(== self.donkeykongismyfavoritemarvelsuperhero 1s) goto 0x00058C
0x000478:
    push -1s
    [OBJ_WRITER].myx = (+ 0s:view_xview self.wrx)
    push -1s
    [OBJ_WRITER].writingx = (+ 0s:view_xview self.wrx)
    if !(bool (instance_exists[]:int32 (var 774s))) goto 0x000550
0x0004D8:
    push -1s
    [obj_face].x = (+ 0s:view_xview 24s)
    push -1s
    [OBJ_WRITER].myx = (+ (+ 0s:view_xview self.wrx) 58s)
    push -1s
    [OBJ_WRITER].writingx = (+ (+ 0s:view_xview self.wrx) 58s)
0x000550:
    push -1s
    [obj_dialoguer].xx = 0s:view_xview
    push -1s
    [obj_dialoguer].x = (+ 0s:view_xview self.dgx)
0x00058C:
    if !(== self.con 3s) goto 0x0005B4
0x0005A0:
    push (== 782.stringno 2s)
    goto 0x0005B8
0x0005B4:
    push 0s
0x0005B8:
    if !pop goto 0x0005DC
0x0005BC:
    if !(== self.deltaco 0s) goto 0x0005DC
0x0005D0:
    self.deltaco = 1s
0x0005DC:
    if !(== self.con 3s) goto 0x00060C
0x0005F0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000610
0x00060C:
    push 0s
0x000610:
    if !pop goto 0x00062C
0x000614:
    self.con = 4s
    global.interact = 0s
0x00062C:
    if !(== self.switches 3s) goto 0x000654
0x000640:
    push (< self.con 4s)
    goto 0x000658
0x000654:
    push 0s
0x000658:
    if !pop goto 0x000674
0x00065C:
    self.won = 1s
    self.deltaco = 1s
0x000674:
    if !(== self.won 1s) goto 0x0006B0
0x000688:
    if !(< 1570.x 280s) goto 0x0006B0
0x00069C:
    push (== global.interact 0s)
    goto 0x0006B4
0x0006B0:
    push 0s
0x0006B4:
    if !pop goto 0x00080C
0x0006B8:
    global.interact = 1s
    call (snd_play[]:int32 (var 104s))
    global.facechoice = 6s
    global.faceemotion = 6s
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* Ring.../"
    stog.msg[1s] = "\\TS \\E4 \\F6 \\TA %"
    stog.msg[2s] = "\\E3* H-h-hey^1!&* You did it!/"
    stog.msg[2s] = "\\E4* I was worried I&  messed it up&  there.../"
    stog.msg[3s] = "\\E0* But I guess we&  make a pretty good&  team!/%%"
    stog.msg[4s] = "\\TS \\F0 \\E0 \\T0 %"
    stog.msg[5s] = "* (Click...)/%%"
    global.plot = 140s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
    stog.flag[404s] = 1s
    global.plot = 140s
0x00080C:
    if !(== self.con 8s) goto 0x000838
0x000820:
    global.interact = 0s
    self.con = 9s
0x000838:
    if !(== self.deltaco 1s) goto 0x0008D4
0x00084C:
    pushenv (int32 self.ff) 0x00087C
0x00085C:
    self.image_alpha = (- self.image_alpha 0.05d)
0x00087C:
    popenv 0x00085C
0x000880:
    if !(< (int32 self.ff):image_alpha 0.06d) goto 0x0008D4
0x0008A8:
    pushenv (int32 self.ff) 0x0008C4
0x0008B8:
    call (instance_destroy[]:int32 )
0x0008C4:
    popenv 0x0008B8
0x0008C8:
    self.deltaco = 2s
0x0008D4:
    exit
