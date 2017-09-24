0x000000:
    if !(== self.con 1s) goto 0x000034
0x000014:
    self.con = 2s
    stog.alarm[4s] = 20s
0x000034:
    if !(== self.con 3s) goto 0x0000D0
0x000048:
    push 270s
    stog.direction* = (int32 self.nap)
    self.bl = (instance_create[]:int32 (var 1337s) (- (int32 self.nap):y 10s) (+ (int32 self.nap):x 2s))
    self.con = 4s
    stog.alarm[4s] = 30s
0x0000D0:
    if !(== self.con 5s) goto 0x000124
0x0000E4:
    pushenv (int32 self.bl) 0x000100
0x0000F4:
    call (instance_destroy[]:int32 )
0x000100:
    popenv 0x0000F4
0x000104:
    self.con = 6s
    stog.alarm[4s] = 20s
0x000124:
    if !(== self.con 7s) goto 0x000210
0x000138:
    stog.msg[0s] = "* oh..^1. hey..^1. you..^1./"
    stog.msg[1s] = "* followed me..^1.&* into my house.../"
    stog.msg[2s] = "* ..^1.&* m-make yourself at home???/%%"
    push -5s
    if !(> 36s:flag 0s) goto 0x0001E4
0x00019C:
    stog.msg[0s] = "* oh..^1.&* you really came.../"
    stog.msg[1s] = "* sorry^1, i...&* wasn't expecting that./"
    stog.msg[2s] = "* it's not much^1, but make&  yourself at home./%%"
0x0001E4:
    stog.flag[93s] = 1s
    call (scr_regulartext[]:int32 )
    self.con = 8s
0x000210:
    if !(== self.con 8s) goto 0x000240
0x000224:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000244
0x000240:
    push 0s
0x000244:
    if !pop goto 0x000294
0x000248:
    global.interact = 0s
    self.con = 9s
    push -5s
    if !(<= 36s:flag 0s) goto 0x000294
0x00027C:
    push 90s
    stog.direction* = (int32 self.nap)
0x000294:
    if !(== self.con 11s) goto 0x0002C4
0x0002A8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002C8
0x0002C4:
    push 0s
0x0002C8:
    if !pop goto 0x000310
0x0002CC:
    global.interact = 1s
    push 180s
    stog.direction* = (int32 self.nap)
    self.con = 12s
    stog.alarm[4s] = 20s
0x000310:
    if !(== self.con 12s) goto 0x000330
0x000324:
    global.interact = 1s
0x000330:
    if !(== self.con 13s) goto 0x00038C
0x000344:
    stog.msg[0s] = "* oh..^1. are you hungry.../"
    stog.msg[1s] = "* i can get you something&  to eat.../%%"
    call (scr_regulartext[]:int32 )
    self.con = 14s
0x00038C:
    if !(== self.con 14s) goto 0x0003BC
0x0003A0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0003C0
0x0003BC:
    push 0s
0x0003C0:
    if !pop goto 0x0003FC
0x0003C4:
    push -2s
    stog.hspeed* = (int32 self.nap)
    self.con = 15s
    stog.alarm[4s] = 30s
0x0003FC:
    if !(== self.con 16s) goto 0x000450
0x000410:
    [obj_mainchara].vspeed = 3s
    [obj_mainchara].image_speed = 0.25d
    self.con = 17s
    stog.alarm[4s] = 10s
0x000450:
    if !(== self.con 18s) goto 0x0004A8
0x000464:
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].image_index = 0s
    [obj_mainchara].vspeed = 0s
    self.con = 19s
    stog.alarm[4s] = 26s
0x0004A8:
    if !(== self.con 20s) goto 0x000524
0x0004BC:
    push 0s
    stog.hspeed* = (int32 self.nap)
    push 90s
    stog.direction* = (int32 self.nap)
    push -2s
    stog.vspeed* = (int32 self.nap)
    self.con = 21s
    stog.alarm[4s] = 10s
0x000524:
    if !(== self.con 22s) goto 0x0005A8
0x000538:
    push 0s
    stog.vspeed* = (int32 self.nap)
    push 90s
    stog.direction* = (int32 self.nap)
    push 0.01d
    stog.speed* = (int32 self.nap)
    self.con = 23s
    stog.alarm[4s] = 30s
0x0005A8:
    if !(== self.con 24s) goto 0x00060C
0x0005BC:
    push 270s
    stog.direction* = (int32 self.nap)
    push 0s
    stog.speed* = (int32 self.nap)
    stog.alarm[4s] = 30s
    self.con = 25s
0x00060C:
    if !(== self.con 26s) goto 0x00065C
0x000620:
    global.msc = 615s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 27s
0x00065C:
    if !(== self.con 27s) goto 0x00068C
0x000670:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000690
0x00068C:
    push 0s
0x000690:
    if !pop goto 0x0006B4
0x000694:
    self.con = 28s
    stog.alarm[4s] = 90s
0x0006B4:
    if !(== self.con 29s) goto 0x000704
0x0006C8:
    global.msc = 617s
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 30s
0x000704:
    if !(== self.con 30s) goto 0x000734
0x000718:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000738
0x000734:
    push 0s
0x000738:
    if !pop goto 0x0007F8
0x00073C:
    pushenv (int32 self.nap) 0x000780
0x00074C:
    call (move_towards_point[]:int32 (var 4s) (var 100s) (var 220s))
    self.sprite_index = self.rsprite
0x000780:
    popenv 0x00074C
0x000784:
    pushenv 1570s 0x0007D4
0x00078C:
    call (move_towards_point[]:int32 (var 2s) (var 100s) (var 120s))
    self.sprite_index = self.rsprite
    self.image_speed = 0.25d
0x0007D4:
    popenv 0x00078C
0x0007D8:
    self.con = 31s
    stog.alarm[4s] = 20s
0x0007F8:
    if !(== self.con 32s) goto 0x000898
0x00080C:
    push 0s
    stog.speed* = (int32 self.nap)
    [obj_mainchara].x = (round[]:int32 1570.x)
    [obj_mainchara].y = (round[]:int32 1570.y)
    [obj_mainchara].speed = 0s
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].image_index = 0s
    self.con = 33s
    stog.alarm[4s] = 30s
0x000898:
    if !(== self.con 34s) goto 0x0008E4
0x0008AC:
    push 180s
    stog.direction* = (int32 self.nap)
    self.con = 35s
    stog.alarm[4s] = 15s
0x0008E4:
    if !(== self.con 36s) goto 0x0009A4
0x0008F8:
    push 1136s
    stog.sprite_index* = (int32 self.nap)
    stog.y* = (+ (int32 self.nap):y 20s)
    push 1s
    stog.fun* = (int32 self.nap)
    [obj_mainchara].visible = 0s
    self.mc = (scr_marker[]:int32 (var 1050s) 1570.y 1570.x)
    self.con = 37s
    stog.alarm[4s] = 30s
0x0009A4:
    push (int32 self.nap)
    if !(== self.con 38s) goto 0x000A0C
0x0009B8:
    stog.msg[0s] = "* here we go..^1.&* you'll lie down as long&  as you don't move./"
    stog.msg[1s] = "* so..^1. only move around when&  you want to get up^1, i&  guess./%%"
    call (scr_regulartext[]:int32 )
    self.con = 39s
    self.buffer = 10s
0x000A0C:
    if !(== self.con 39s) goto 0x000A3C
0x000A20:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000A40
0x000A3C:
    push 0s
0x000A40:
    if !pop goto 0x000A98
0x000A44:
    self.get_mcx = 1570.x
    self.get_mcy = 1570.y
    stog.alarm[6s] = 230s
    stog.alarm[5s] = 300s
    self.con = 40s
0x000A98:
    if !(== self.con 40s) goto 0x000CBC
0x000AAC:
    self.buffer = (- self.buffer 1s)
    global.interact = 1s
    if !(< self.buffer 1s) goto 0x000AF0
0x000AE4:
    global.interact = 0s
0x000AF0:
    stog.flag[17s] = 1s
    if (!= 1570.x self.get_mcx) goto 0x000B50
0x000B1C:
    if !(!= 1570.y self.get_mcy) goto 0x000B48
0x000B34:
    push (< self.buffer 1s)
    goto 0x000B4C
0x000B48:
    push 0s
0x000B4C:
    goto 0x000B54
0x000B50:
    push 1s
0x000B54:
    if !pop goto 0x000CBC
0x000B58:
    push -1s
    if !(>= 6s:alarm 1s) goto 0x000B88
0x000B74:
    stog.alarm[6s] = -1s
0x000B88:
    stog.flag[458s] = 1s
    stog.flag[17s] = 0s
    global.interact = 1s
    [obj_mainchara].x = (int32 self.mc):x
    [obj_mainchara].y = (int32 self.mc):y
    [obj_mainchara].visible = 1s
    pushenv (int32 self.mc) 0x000C1C
0x000C10:
    call (instance_destroy[]:int32 )
0x000C1C:
    popenv 0x000C10
0x000C20:
    self.con = 40s
    if !(== self.wavein 0s) goto 0x000C74
0x000C40:
    stog.alarm[5s] = -1s
    self.con = 41s
    stog.alarm[4s] = 30s
0x000C74:
    if !(> self.wavein 0s) goto 0x000CBC
0x000C88:
    call (event_user[]:int32 (var 1s))
    self.con = 41s
    stog.alarm[4s] = 90s
0x000CBC:
    if !(== self.con 42s) goto 0x000D68
0x000CD0:
    push 0s
    stog.fun* = (int32 self.nap)
    push (int32 self.nap):lsprite
    stog.sprite_index* = (int32 self.nap)
    stog.y* = (- (int32 self.nap):y 20s)
    stog.msg[0s] = "* well^1, that was nice..^1.&* thank you.../%%"
    call (scr_regulartext[]:int32 )
    self.con = 44s
0x000D68:
    push (int32 self.nap)
    if !(== self.con 44s) goto 0x000D98
0x000D7C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000D9C
0x000D98:
    push 0s
0x000D9C:
    if !pop goto 0x000DE4
0x000DA0:
    self.con = 45s
    pushenv 1135s 0x000DC0
0x000DB4:
    self.buffer = 240s
0x000DC0:
    popenv 0x000DB4
0x000DC4:
    global.interact = 0s
    stog.flag[93s] = 3s
0x000DE4:
    if !(== self.con 80s) goto 0x000E48
0x000DF8:
    push 2s
    stog.vspeed* = (int32 self.nap)
    push 270s
    stog.direction* = (int32 self.nap)
    self.con = 81s
    stog.alarm[4s] = 10s
0x000E48:
    if !(== self.con 82s) goto 0x000EAC
0x000E5C:
    push 0s
    stog.vspeed* = (int32 self.nap)
    push 2s
    stog.hspeed* = (int32 self.nap)
    self.con = 85s
    stog.alarm[4s] = 150s
0x000EAC:
    if !(== self.con 86s) goto 0x000EDC
0x000EC0:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000EE0
0x000EDC:
    push 0s
0x000EE0:
    if !pop goto 0x000F1C
0x000EE4:
    pushenv (int32 self.nap) 0x000F00
0x000EF4:
    call (instance_destroy[]:int32 )
0x000F00:
    popenv 0x000EF4
0x000F04:
    self.con = 87s
    global.interact = 0s
0x000F1C:
    if (== self.wavein 1s) goto 0x000F44
0x000F30:
    push (== self.wavein 2s)
    goto 0x000F48
0x000F44:
    push 1s
0x000F48:
    if !pop goto 0x000FBC
0x000F4C:
    self.wavein = 2s
    stog.image_alpha* = (+ (int32 self.waver):image_alpha 0.005d)
    if !(>= (int32 self.waver):image_alpha 1s) goto 0x000FBC
0x000FA8:
    push (int32 self.waver)
    self.wavein = 2.1d
0x000FBC:
    if !(== self.wavein 3s) goto 0x0010C0
0x000FD0:
    stog.image_alpha* = (- (int32 self.waver):image_alpha 0.005d)
    if !(<= (int32 self.waver):image_alpha 0s) goto 0x001038
0x001020:
    push (int32 self.waver)
    push 0s
    stog.image_alpha* = (int32 self.waver)
0x001038:
    if !(<= (int32 self.waver):image_alpha 0s) goto 0x00106C
0x001058:
    push (== 1134.songplaying 0s)
    goto 0x001070
0x00106C:
    push 0s
0x001070:
    if !pop goto 0x0010C0
0x001074:
    self.wavein = 0s
    pushenv (int32 self.waver) 0x00109C
0x001090:
    call (instance_destroy[]:int32 )
0x00109C:
    popenv 0x001090
0x0010A0:
    pushenv 1134s 0x0010BC
0x0010A8:
    call (event_user[]:int32 (var 7s))
0x0010BC:
    popenv 0x0010A8
0x0010C0:
    exit
