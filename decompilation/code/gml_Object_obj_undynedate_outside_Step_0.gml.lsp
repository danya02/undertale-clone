0x000000:
    if !(== self.con 5s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000144
0x000030:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1570s) (+ (int32 self.papyrus):y 50s) (+ (int32 self.papyrus):x 20s) (+ (int32 self.papyrus):y 40s) (+ (int32 self.papyrus):x 10s))) goto 0x000144
0x0000C8:
    global.facing = 2s
    global.interact = 1s
    self.con = 6s
    push 0s
    stog.dir* = (int32 self.papyrus)
    push 1s
    stog.fun* = (int32 self.papyrus)
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
0x000144:
    if !(== self.con 6s) goto 0x000178
0x000158:
    self.con = 7s
    stog.alarm[4s] = 30s
0x000178:
    if !(== self.con 8s) goto 0x000244
0x00018C:
    push 1338s
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    call (scr_papface[]:int32 (var 3s) (var 0s))
    global.msc = 0s
    stog.msg[0s] = "PSST./"
    stog.msg[1s] = "\\E0MAKE SURE TO&GIVE HER THIS!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 9s
0x000244:
    if !(== self.con 9s) goto 0x000274
0x000258:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000278
0x000274:
    push 0s
0x000278:
    if !pop goto 0x0002E0
0x00027C:
    push 0.2d
    stog.image_speed* = (int32 self.papyrus)
    if !(>= (int32 self.papyrus):image_index 4s) goto 0x0002E0
0x0002BC:
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 10s
0x0002E0:
    if !(== self.con 10s) goto 0x00033C
0x0002F4:
    stog.msg[0s] = "SHE LOVES THESE!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 11s
0x00033C:
    if !(== self.con 11s) goto 0x00036C
0x000350:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000370
0x00036C:
    push 0s
0x000370:
    if !pop goto 0x000404
0x000374:
    push -0.2d
    stog.image_speed* = (int32 self.papyrus)
    if !(< (int32 self.papyrus):image_index 1s) goto 0x000404
0x0003B4:
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 12s
    stog.alarm[4s] = 20s
0x000404:
    if !(== self.con 13s) goto 0x000484
0x000418:
    push 1326s
    stog.sprite_index* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
    call (snd_play[]:int32 (var 17s))
    stog.alarm[4s] = 30s
    self.con = 14s
0x000484:
    if !(== self.con 15s) goto 0x000510
0x000498:
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    self.con = 16s
    stog.alarm[4s] = 30s
0x000510:
    if !(== self.con 17s) goto 0x000558
0x000524:
    call (caster_stop[]:int32 global.currentsong)
    self.con = 18s
    stog.alarm[4s] = 30s
0x000558:
    if !(== self.con 19s) goto 0x000654
0x00056C:
    self.undyne = (instance_create[]:int32 (var 1061s) (- (int32 self.papyrus):y 35s) (int32 self.papyrus):x)
    push (int32 self.undyne):dtsprite
    stog.sprite_index* = (int32 self.undyne)
    push 1s
    stog.d* = (int32 self.undyne)
    push 900001
    stog.depth* = (int32 self.undyne)
    call (caster_play[]:int32 (var 1s) (var 1s) (var 129s))
    self.con = 20s
    stog.alarm[4s] = 60s
0x000654:
    if !(== self.con 20s) goto 0x0006B8
0x000668:
    pushenv (int32 self.door) 0x0006B4
0x000678:
    if !(< self.image_index 7.6d) goto 0x0006B4
0x000694:
    self.image_index = (+ self.image_index 0.2d)
0x0006B4:
    popenv 0x000678
0x0006B8:
    if !(== self.con 21s) goto 0x0007A8
0x0006CC:
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hi^1, Papyrus!/"
    stog.msg[1s] = "* Ready for your extra-&  private^1, one-on-one&  training?/"
    call (scr_papface[]:int32 (var 0s) (var 2s))
    stog.msg[3s] = "YOU BET I AM!/"
    stog.msg[4s] = "AND I BROUGHT&A FRIEND!/%%"
    self.beedly = 0s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 22s
0x0007A8:
    if !(== self.con 22s) goto 0x0007D8
0x0007BC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0007DC
0x0007D8:
    push 0s
0x0007DC:
    if !pop goto 0x000860
0x0007E0:
    push -4s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    self.con = 23s
    stog.alarm[4s] = 10s
0x000860:
    if !(== self.con 24s) goto 0x000904
0x000874:
    push 0s
    stog.hspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0s
    stog.image_speed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    self.con = 25s
    stog.alarm[4s] = 30s
0x000904:
    if !(== self.con 26s) goto 0x000A1C
0x000918:
    global.facechoice = 5s
    global.typer = 37s
    global.faceemotion = 0s
    stog.msg[0s] = "* Hi^1, I don't think&  we've.../"
    stog.msg[1s] = "\\E2* .../"
    stog.msg[2s] = "\\M9* .../"
    call (scr_papface[]:int32 (var 0s) (var 3s))
    stog.msg[4s] = "\\M0.../"
    call (scr_undface[]:int32 (var 1s) (var 5s))
    stog.msg[6s] = "\\E1* Why don't^1.&* You two^1.&* Come in?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 27s
0x000A1C:
    if !(== self.con 27s) goto 0x000A4C
0x000A30:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A50
0x000A4C:
    push 0s
0x000A50:
    if !pop goto 0x000A74
0x000A54:
    self.con = 28s
    stog.alarm[4s] = 10s
0x000A74:
    if !(== self.con 28s) goto 0x000B80
0x000A88:
    push (int32 self.undyne):usprite
    stog.sprite_index* = (int32 self.undyne)
    stog.image_alpha* = (- (int32 self.undyne):image_alpha 0.1d)
    stog.x* = (+ (int32 self.papyrus):x 4s)
    stog.y* = (- (int32 self.papyrus):y 0.5d)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    push 0.25d
    stog.image_speed* = (int32 self.papyrus)
0x000B80:
    push (int32 self.undyne)
    push (int32 self.papyrus)
    push (int32 self.papyrus)
    if !(== self.con 29s) goto 0x000C14
0x000B94:
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    self.con = 30s
    stog.alarm[4s] = 8s
0x000C14:
    if !(== self.con 31s) goto 0x000CA8
0x000C28:
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push (int32 self.papyrus):rsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.con = 32s
    stog.alarm[4s] = 8s
0x000CA8:
    if !(== self.con 33s) goto 0x000D3C
0x000CBC:
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push (int32 self.papyrus):lsprite
    stog.sprite_index* = (int32 self.papyrus)
    self.con = 34s
    stog.alarm[4s] = 8s
0x000D3C:
    if !(== self.con 35s) goto 0x000DE8
0x000D50:
    push 0.5d
    stog.image_speed* = (int32 self.papyrus)
    push 0s
    stog.image_index* = (int32 self.papyrus)
    push -3s
    stog.vspeed* = (int32 self.papyrus)
    push (int32 self.papyrus):usprite
    stog.sprite_index* = (int32 self.papyrus)
    self.con = 36s
    stog.alarm[4s] = 15s
0x000DE8:
    if !(== self.con 36s) goto 0x000E2C
0x000DFC:
    stog.image_alpha* = (- (int32 self.papyrus):image_alpha 0.12d)
0x000E2C:
    push (int32 self.papyrus)
    if !(== self.con 37s) goto 0x000EBC
0x000E40:
    call (instance_create[]:int32 (var 805s) (var 83s) (var 140s))
    pushenv (int32 self.papyrus) 0x000E80
0x000E74:
    call (instance_destroy[]:int32 )
0x000E80:
    popenv 0x000E74
0x000E84:
    pushenv (int32 self.undyne) 0x000EA0
0x000E94:
    call (instance_destroy[]:int32 )
0x000EA0:
    popenv 0x000E94
0x000EA4:
    global.interact = 0s
    self.con = 38s
0x000EBC:
    if !(== self.con 38s) goto 0x000FC4
0x000ED0:
    if !(> 1570.y 180s) goto 0x000EF8
0x000EE4:
    push (== global.interact 0s)
    goto 0x000EFC
0x000EF8:
    push 0s
0x000EFC:
    if !pop goto 0x000FC4
0x000F00:
    global.typer = 5s
    [obj_mainchara].y = 175s
    global.msc = 0s
    global.facechoice = 0s
    global.faceemotion = 3s
    stog.msg[0s] = "* (You hear someone shouting&  a whisper at you from&  inside the house.)/"
    call (scr_papface[]:int32 (var 0s) (var 1s))
    stog.msg[2s] = "NO^1!&YOU CAN'T ESCAPE&FRIENDSHIP!!/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    global.interact = 1s
    self.con = 39s
0x000FC4:
    if !(== self.con 39s) goto 0x000FF0
0x000FD8:
    push (bool (instance_exists[]:int32 (var 782s)))
    goto 0x000FF4
0x000FF0:
    push 0s
0x000FF4:
    if !pop goto 0x001004
0x000FF8:
    [obj_mainchara].y = 175s
0x001004:
    if !(== self.con 39s) goto 0x001034
0x001018:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x001038
0x001034:
    push 0s
0x001038:
    if !pop goto 0x001054
0x00103C:
    self.con = 38s
    global.interact = 0s
0x001054:
    exit
