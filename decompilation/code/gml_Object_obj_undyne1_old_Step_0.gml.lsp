0x000000:
    if !(== self.con 1s) goto 0x00011C
0x000014:
    global.interact = 1s
    self.fade = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.02d
    stog.fadespeed* = (int32 self.fade)
    global.currentsong = (caster_load[]:int32 (var "music/undynetheme.ogg"))
    self.walknoise = (caster_load[]:int32 (var "music/snowwalk.ogg"))
    call (caster_set_panning[]:int32 (var 1s) self.walknoise)
    call (caster_loop[]:int32 (var 1s) (var 1s) self.walknoise)
    push -1s
    stog.hspeed* = (int32 self.undyne)
    self.con = 2s
    [obj_fearundynenpc1].w = 1s
    [obj_fearundynenpc2].w = 1s
0x00011C:
    if !(== self.con 2s) goto 0x0001D8
0x000130:
    if !(< (int32 self.undyne):x 340s) goto 0x0001D8
0x000150:
    call (caster_loop[]:int32 (var 0.6d) (var 0.5d) global.currentsong)
    call (caster_pause[]:int32 self.walknoise)
    push 0s
    stog.hspeed* = (int32 self.undyne)
    self.con = 2.5d
    stog.alarm[4s] = 60s
0x0001D8:
    if !(== self.con 3.5d) goto 0x0002F4
0x0001F4:
    self.remembery = (int32 self.undyne):y
    if !(>= (int32 self.undyne):y (- 1570.y 20s)) goto 0x00027C
0x00023C:
    push -1s
    stog.vspeed* = (int32 self.undyne)
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
0x00027C:
    if !(< (int32 self.undyne):y (- 1570.y 20s)) goto 0x0002E8
0x0002A8:
    push 1s
    stog.vspeed* = (int32 self.undyne)
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
0x0002E8:
    self.con = 4s
0x0002F4:
    if !(== self.con 4s) goto 0x0003C4
0x000308:
    if !(< (abs[]:int32 (- (int32 self.undyne):y (- 1570.y 20s))) 5s) goto 0x0003C4
0x000344:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    push 180s
    stog.direction* = (int32 self.undyne)
    stog.alarm[4s] = 90s
    self.con = 4.1d
0x0003C4:
    if !(== self.con 5.1d) goto 0x000428
0x0003E0:
    push -0.5d
    stog.hspeed* = (int32 self.undyne)
    self.con = 4.2d
    stog.alarm[4s] = 20s
0x000428:
    if !(== self.con 5.2d) goto 0x0004B4
0x000444:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    self.con = 4.3d
    push (floor[]:int32 (int32 self.undyne):x)
    stog.x* = (int32 self.undyne)
    stog.alarm[4s] = 60s
0x0004B4:
    if !(== self.con 5.3d) goto 0x000518
0x0004D0:
    push -0.5d
    stog.hspeed* = (int32 self.undyne)
    stog.alarm[4s] = 50s
    self.con = 4.4d
0x000518:
    if !(== self.con 5.4d) goto 0x00056C
0x000534:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    stog.alarm[4s] = 120s
    self.con = 5s
0x00056C:
    if !(== self.con 6s) goto 0x000654
0x000580:
    if !(> (int32 self.undyne):y self.remembery) goto 0x0005E4
0x0005A4:
    push -2s
    stog.vspeed* = (int32 self.undyne)
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
0x0005E4:
    if !(< (int32 self.undyne):y self.remembery) goto 0x000648
0x000608:
    push 2s
    stog.vspeed* = (int32 self.undyne)
    push (int32 self.undyne):dsprite
    stog.sprite_index* = (int32 self.undyne)
0x000648:
    self.con = 7s
0x000654:
    if !(== self.con 7s) goto 0x00071C
0x000668:
    if !(< (abs[]:int32 (- self.remembery (int32 self.undyne):y)) 5s) goto 0x00071C
0x00069C:
    push 0s
    stog.vspeed* = (int32 self.undyne)
    self.con = 6.1d
    push 1s
    stog.hspeed* = (int32 self.undyne)
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    stog.alarm[4s] = 30s
0x00071C:
    if !(== self.con 7.1d) goto 0x000790
0x000738:
    push 0s
    stog.hspeed* = (int32 self.undyne)
    self.con = 6.2d
    stog.alarm[4s] = 50s
    push 0s
    stog.image_index* = (int32 self.undyne)
0x000790:
    if !(== self.con 7.2d) goto 0x0007FC
0x0007AC:
    push (int32 self.undyne):lsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 6.3d
    stog.alarm[4s] = 70s
0x0007FC:
    if !(== self.con 7.3d) goto 0x000868
0x000818:
    push (int32 self.undyne):rsprite
    stog.sprite_index* = (int32 self.undyne)
    self.con = 6.4d
    stog.alarm[4s] = 40s
0x000868:
    if !(== self.con 7.4d) goto 0x00095C
0x000884:
    call (caster_resume[]:int32 self.walknoise)
    self.mus = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.mus)
    global.currentsong = self.walknoise
    self.tt = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.tt)
    push 1s
    stog.hspeed* = (int32 self.undyne)
    self.con = 8s
0x00095C:
    if !(== self.con 8s) goto 0x0009A8
0x000970:
    if !(> (int32 self.undyne):x 500s) goto 0x0009A8
0x000990:
    self.con = 9s
    global.interact = 0s
0x0009A8:
    if !(== self.con 9s) goto 0x000A9C
0x0009BC:
    if (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 200s) (var 200s) (var 100s) (var 180s))) goto 0x000A4C
0x000A04:
    push (bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (var 200s) (var 360s) (var 100s) (var 340s)))
    goto 0x000A50
0x000A4C:
    push 1s
0x000A50:
    if !pop goto 0x000A9C
0x000A54:
    call (caster_free[]:int32 (var -3s))
    global.currentsong = (caster_load[]:int32 (var "music/waterfall.ogg"))
    global.interact = 1s
    self.con = 10s
0x000A9C:
    if !(== self.con 10s) goto 0x000B7C
0x000AB0:
    if !(> 1570.y 120s) goto 0x000AEC
0x000AC4:
    push 90s
    stog.y* = (int32 self.mkid)
    self.up = 0s
    goto 0x000B10
0x000AEC:
    push 130s
    stog.y* = (int32 self.mkid)
    self.up = 1s
0x000B10:
    if !(< 1570.x 240s) goto 0x000B4C
0x000B24:
    self.left = 1s
    push -4s
    stog.hspeed* = (int32 self.mkid)
    goto 0x000B70
0x000B4C:
    self.left = 0s
    push 4s
    stog.hspeed* = (int32 self.mkid)
0x000B70:
    self.con = 11s
0x000B7C:
    if !(== self.con 11s) goto 0x000C94
0x000B90:
    if !(< (abs[]:int32 (- (int32 self.mkid):x (+ 1570.x 10s))) 15s) goto 0x000C94
0x000BCC:
    push 0s
    stog.hspeed* = (int32 self.mkid)
    self.con = 12s
    if !(== self.up 1s) goto 0x000C2C
0x000C04:
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
0x000C2C:
    if !(== self.up 0s) goto 0x000C68
0x000C40:
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
0x000C68:
    push 0s
    stog.image_index* = (int32 self.mkid)
    stog.alarm[4s] = 30s
0x000C94:
    if !(== self.con 13s) goto 0x000CF0
0x000CA8:
    self.con = 14s
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    stog.alarm[4s] = 30s
0x000CF0:
    if !(== self.con 15s) goto 0x000D9C
0x000D04:
    if !(== self.up 1s) goto 0x000D40
0x000D18:
    push (int32 self.mkid):usprite
    stog.sprite_index* = (int32 self.mkid)
0x000D40:
    if !(== self.up 0s) goto 0x000D7C
0x000D54:
    push (int32 self.mkid):dsprite
    stog.sprite_index* = (int32 self.mkid)
0x000D7C:
    self.con = 16s
    stog.alarm[4s] = 30s
0x000D9C:
    if !(== self.con 17s) goto 0x000F18
0x000DB0:
    if !(== self.up 1s) goto 0x000DEC
0x000DC4:
    push (int32 self.mkid):utsprite
    stog.sprite_index* = (int32 self.mkid)
0x000DEC:
    if !(== self.up 0s) goto 0x000E28
0x000E00:
    push (int32 self.mkid):dtsprite
    stog.sprite_index* = (int32 self.mkid)
0x000E28:
    push 3s
    stog.myinteract* = (int32 self.mkid)
    global.typer = 5s
    global.msc = 0s
    stog.msg[0s] = "* Yo..^1. did you see the&  way she was staring at&  you...?/"
    stog.msg[1s] = "* That.../"
    stog.msg[2s] = "* ... was AWESOME!/"
    stog.msg[3s] = "* I'm SOOOO jealous!/"
    stog.msg[4s] = "* What'd you do to get her&  attention...^1?&* Ha ha./"
    stog.msg[5s] = "* C'mon^1!&* Let's go watch her beat&  up some bad guys!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 18s
0x000F18:
    if !(== self.con 18s) goto 0x000F48
0x000F2C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000F4C
0x000F48:
    push 0s
0x000F4C:
    if !pop goto 0x000FE8
0x000F50:
    push 4s
    stog.hspeed* = (int32 self.mkid)
    push 0s
    stog.myinteract* = (int32 self.mkid)
    push 0.3d
    stog.image_speed* = (int32 self.mkid)
    push (int32 self.mkid):rsprite
    stog.sprite_index* = (int32 self.mkid)
    self.con = 19s
    stog.alarm[4s] = 60s
0x000FE8:
    if !(== self.con 20s) goto 0x001058
0x000FFC:
    global.interact = 0s
    call (caster_loop[]:int32 (var 1s) (var 0.8d) global.currentsong)
    self.con = 21s
    global.plot = 106s
    call (instance_destroy[]:int32 )
0x001058:
    exit
