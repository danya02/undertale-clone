0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    call (scr_npc_anim[]:int32 )
    call (script_execute[]:int32 (var 2s) (var 106s))
    self.image_alpha = 0s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000100
0x000080:
    self.dist = (distance_to_object[]:int32 (var 1570s))
    if !(< self.dist 60s) goto 0x000100
0x0000AC:
    self.disto = (/ (double 5s) (+ self.dist 2s))
    if !(> self.disto 1s) goto 0x0000F0
0x0000E4:
    self.disto = 1s
0x0000F0:
    self.image_alpha = self.disto
0x000100:
    if !(== self.con 1s) goto 0x000144
0x000114:
    global.interact = 1s
    self.con = 2s
    self.tempvol = (caster_get_volume[]:int32 global.currentsong)
0x000144:
    if !(== self.con 2s) goto 0x0001E0
0x000158:
    global.interact = 1s
    self.tempvol = (- self.tempvol 0.02d)
    if !(<= self.tempvol 0s) goto 0x0001C4
0x000198:
    self.tempvol = 0s
    self.con = 3s
    call (caster_pause[]:int32 global.currentsong)
0x0001C4:
    call (caster_set_volume[]:int32 self.tempvol global.currentsong)
0x0001E0:
    if !(== self.con 3s) goto 0x000200
0x0001F4:
    global.interact = 1s
0x000200:
    if !(== self.con 3s) goto 0x000230
0x000214:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000234
0x000230:
    push 0s
0x000234:
    if !pop goto 0x000280
0x000238:
    global.interact = 1s
    self.race = (caster_load[]:int32 (var "music/race.ogg"))
    self.con = 4s
    stog.alarm[4s] = 15s
0x000280:
    if !(== self.con 4s) goto 0x0002A0
0x000294:
    global.interact = 1s
0x0002A0:
    if !(== self.con 5s) goto 0x000348
0x0002B4:
    global.interact = 1s
    self.direction = 90s
    global.facing = 2s
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = "\\R 3..^2.& 2..^2.& 1..^2.%%"
    push (var 782s)
    call (instance_create[]:int32 (var 20s) -1s (+ 0s:view_xview 60s))
    self.con = 6s
0x000348:
    if !(== self.con 6s) goto 0x000368
0x00035C:
    global.interact = 1s
0x000368:
    if !(== self.con 6s) goto 0x000398
0x00037C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00039C
0x000398:
    push 0s
0x00039C:
    if !pop goto 0x000528
0x0003A0:
    self.bringback = 0s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.race)
    stog.msg[0s] = "\\R GO!!^2!%%"
    push (var 782s)
    call (instance_create[]:int32 (var 20s) -1s (+ 0s:view_xview 60s))
    self.defaultspeed = -0.13d
    push self.defaultspeed
    push -1s
    stog.hspeed* = (int32 0s:snail)
    push 0.25d
    push -1s
    stog.image_speed* = (int32 0s:snail)
    push -0.18d
    push -1s
    stog.hspeed* = (int32 1s:snail)
    push 0.25d
    push -1s
    stog.image_speed* = (int32 1s:snail)
    push -0.17d
    push -1s
    stog.hspeed* = (int32 2s:snail)
    push 0.25d
    push -1s
    stog.image_speed* = (int32 2s:snail)
    self.con = 7s
0x000528:
    if !(== self.con 7s) goto 0x000558
0x00053C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00055C
0x000558:
    push 0s
0x00055C:
    if !pop goto 0x000C88
0x000560:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00058C
0x000578:
    push (<= self.blcontimer 15s)
    goto 0x000590
0x00058C:
    push 0s
0x000590:
    if !pop goto 0x0006FC
0x000594:
    call (snd_stop[]:int32 (var 29s))
    call (snd_play[]:int32 (var 29s))
    if !(== self.blconyes 1s) goto 0x000610
0x0005D0:
    pushenv (int32 self.blcon) 0x0005EC
0x0005E0:
    call (instance_destroy[]:int32 )
0x0005EC:
    popenv 0x0005E0
0x0005F0:
    pushenv (int32 self.blcon2) 0x00060C
0x000600:
    call (instance_destroy[]:int32 )
0x00060C:
    popenv 0x000600
0x000610:
    self.blcon = (instance_create[]:int32 (var 1337s) (- 1570.y 10s) 1570.x)
    push (var 1337s)
    push -1s
    self.blcon2 = (instance_create[]:int32 (- (int32 0s:snail):y 10s) -1s (int32 0s:snail):x)
    push 0s
    push -1s
    stog.hspeed* = (int32 0s:snail)
    self.encouragement = (+ self.encouragement 1s)
    self.blconyes = 1s
    self.blcontimer = (+ 11s (random[]:int32 (var 8s)))
0x0006FC:
    if !(<= self.blcontimer 0s) goto 0x000724
0x000710:
    push (== self.blconyes 1s)
    goto 0x000728
0x000724:
    push 0s
0x000728:
    if !pop goto 0x000894
0x00072C:
    pushenv (int32 self.blcon) 0x000748
0x00073C:
    call (instance_destroy[]:int32 )
0x000748:
    popenv 0x00073C
0x00074C:
    pushenv (int32 self.blcon2) 0x000768
0x00075C:
    call (instance_destroy[]:int32 )
0x000768:
    popenv 0x00075C
0x00076C:
    self.blconyes = 0s
    if !(== self.encouragement 1s) goto 0x0007A0
0x00078C:
    push (== self.snailsad 0s)
    goto 0x0007A4
0x0007A0:
    push 0s
0x0007A4:
    if !pop goto 0x0007EC
0x0007A8:
    self.defaultspeed = (- self.defaultspeed 0.01d)
    push self.defaultspeed
    push -1s
    stog.hspeed* = (int32 0s:snail)
0x0007EC:
    if !(== self.encouragement 2s) goto 0x000824
0x000800:
    push self.defaultspeed
    push -1s
    stog.hspeed* = (int32 0s:snail)
0x000824:
    if !(>= self.encouragement 3s) goto 0x000888
0x000838:
    self.defaultspeed = (+ self.defaultspeed (* 0.01d self.encouragement))
    push self.defaultspeed
    push -1s
    stog.hspeed* = (int32 0s:snail)
0x000888:
    self.encouragement = 0s
0x000894:
    push -1s
    if (> (int32 0s:snail):hspeed 0s) goto 0x0008D0
0x0008BC:
    push (> self.encouragement 30s)
    goto 0x0008D4
0x0008D0:
    push 1s
0x0008D4:
    if !pop goto 0x000B48
0x0008D8:
    push -1s
    if (> (int32 0s:snail):hspeed 0s) goto 0x000914
0x000900:
    push (> self.encouragement 90s)
    goto 0x000918
0x000914:
    push 1s
0x000918:
    if !pop goto 0x00096C
0x00091C:
    push -0.4d
    push -1s
    stog.hspeed* = (int32 1s:snail)
    push -0.44d
    push -1s
    stog.hspeed* = (int32 2s:snail)
0x00096C:
    push -1s
    if (> (int32 0s:snail):hspeed 0s) goto 0x0009A8
0x000994:
    push (> self.encouragement 70s)
    goto 0x0009AC
0x0009A8:
    push 1s
0x0009AC:
    if !pop goto 0x0009F8
0x0009B0:
    push -1s
    if !(== (int32 0s:snail):sprite_index 1560s) goto 0x0009F8
0x0009D8:
    push 1561s
    push -1s
    stog.sprite_index* = (int32 0s:snail)
0x0009F8:
    push -1s
    if (> (int32 0s:snail):hspeed 0s) goto 0x000A34
0x000A20:
    push (> self.encouragement 50s)
    goto 0x000A38
0x000A34:
    push 1s
0x000A38:
    if !pop goto 0x000A90
0x000A3C:
    push -1s
    if !(== (int32 0s:snail):sprite_index 1559s) goto 0x000A90
0x000A64:
    push 1560s
    push -1s
    stog.sprite_index* = (int32 0s:snail)
    self.snailsad = 2s
0x000A90:
    push -1s
    if (> (int32 0s:snail):hspeed 0s) goto 0x000ACC
0x000AB8:
    push (> self.encouragement 30s)
    goto 0x000AD0
0x000ACC:
    push 1s
0x000AD0:
    if !pop goto 0x000B28
0x000AD4:
    push -1s
    if !(== (int32 0s:snail):sprite_index 1558s) goto 0x000B28
0x000AFC:
    push 1559s
    push -1s
    stog.sprite_index* = (int32 0s:snail)
    self.snailsad = 1s
0x000B28:
    push 0s
    push -1s
    stog.hspeed* = (int32 0s:snail)
0x000B48:
    self.blcontimer = (- self.blcontimer 1s)
    self.snailtimer = (- self.snailtimer 1s)
    push -1s
    if !(< (int32 0s:snail):x 490s) goto 0x000BAC
0x000BA0:
    self.won = 1s
0x000BAC:
    push -1s
    if !(< (int32 0s:snail):x 480s) goto 0x000BE0
0x000BD4:
    self.con = 8s
0x000BE0:
    push -1s
    if !(< (int32 1s:snail):x 480s) goto 0x000C34
0x000C08:
    self.con = 8s
    if !(== self.won 1s) goto 0x000C34
0x000C28:
    self.won = 2s
0x000C34:
    push -1s
    if !(< (int32 2s:snail):x 480s) goto 0x000C88
0x000C5C:
    self.con = 8s
    if !(== self.won 1s) goto 0x000C88
0x000C7C:
    self.won = 2s
0x000C88:
    if !(== self.con 8s) goto 0x000E10
0x000C9C:
    call (caster_free[]:int32 self.race)
    call (snd_play[]:int32 (var 111s))
    stog.msg[0s] = "\\R RACE END!!^2!%%"
    push (var 782s)
    call (instance_create[]:int32 (var 20s) -1s (+ 0s:view_xview 60s))
    call (caster_resume[]:int32 global.currentsong)
    global.msc = 0s
    push 0s
    push -1s
    stog.hspeed* = (int32 0s:snail)
    push 0s
    push -1s
    stog.hspeed* = (int32 1s:snail)
    push 0s
    push -1s
    stog.hspeed* = (int32 2s:snail)
    push 0s
    push -1s
    stog.image_speed* = (int32 0s:snail)
    push 0s
    push -1s
    stog.image_speed* = (int32 1s:snail)
    push 0s
    push -1s
    stog.image_speed* = (int32 2s:snail)
    self.con = 9s
    stog.alarm[4s] = 30s
0x000E10:
    if !(== self.con 10s) goto 0x000E8C
0x000E24:
    self.tempvol = (+ self.tempvol 0.02d)
    if !(>= self.tempvol 1s) goto 0x000E70
0x000E58:
    self.tempvol = 1s
    self.con = 11s
0x000E70:
    call (caster_set_volume[]:int32 self.tempvol global.currentsong)
0x000E8C:
    if !(== self.con 11s) goto 0x0010B8
0x000EA0:
    self.direction = 180s
    global.facing = 1s
    if !(== self.won 0s) goto 0x000F88
0x000ECC:
    stog.msg[0s] = "* oh........^1.&* you both tried your best.../"
    stog.msg[1s] = "* but the snail looks&  discouraged.../"
    stog.msg[2s] = "* her best wasn't good&  enough.../"
    stog.msg[3s] = "* oh........../%%"
    if !(> self.snailsad 0s) goto 0x000F88
0x000F40:
    stog.msg[0s] = "* oh.......^1.&* looks like you encouraged&  your snail too much.../"
    stog.msg[1s] = "* all that pressure to&  succeed..^1.&* really got to her.../"
    stog.msg[2s] = "* oh......../%%"
0x000F88:
    if !(== self.won 1s) goto 0x000FFC
0x000F9C:
    stog.msg[0s] = "* you won..^1. congratulations./"
    stog.msg[1s] = "* as a prize^1, you get 9G./"
    stog.msg[2s] = "* sorry..^1. we have to make&  a profit somehow.../%%"
    global.gold = (+ global.gold 9s)
0x000FFC:
    if !(== self.won 2s) goto 0x0010A0
0x001010:
    stog.msg[0s] = "* your snail lost by a&  thin margin./"
    stog.msg[1s] = "* actually^1, the snail is&  under the false belief&  that it won.../"
    stog.msg[2s] = "* oh no..^1. the snail is looking&  over here.../"
    stog.msg[3s] = "* here^1, i'll give you some&  money..^1.&* act like you won.../"
    stog.msg[4s] = "* (You got 30G.)/%%"
    global.gold = (+ global.gold 30s)
0x0010A0:
    call (scr_regulartext[]:int32 )
    self.con = 12s
0x0010B8:
    if !(== self.con 12s) goto 0x0010D8
0x0010CC:
    self.buffer = 8s
0x0010D8:
    if !(== self.con 12s) goto 0x001108
0x0010EC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00110C
0x001108:
    push 0s
0x00110C:
    if !pop goto 0x001134
0x001110:
    self.bringback = 1s
    global.interact = 0s
    self.con = 13s
0x001134:
    if !(== self.bringback 1s) goto 0x00133C
0x001148:
    self.there = 0s
    push -1s
    if !(!= (int32 0s:snail):sprite_index 1558s) goto 0x00119C
0x00117C:
    push 1558s
    push -1s
    stog.sprite_index* = (int32 0s:snail)
0x00119C:
    self.i = 0s
    if !(< self.i 3s) goto 0x00131C
0x0011BC:
    push -1s
    push (int32 (int32 self.i):snail):x
    if !(< -1s (int32 (int32 self.i):snail):xstart) goto 0x001278
0x00120C:
    push -1s
    stog.x* = (+ (int32 (int32 self.i):snail):x 4s)
    push 0.334d
    push -1s
    stog.image_speed* = (int32 (int32 self.i):snail)
    goto 0x001300
0x001278:
    push (int32 (int32 self.i):snail)
    push -1s
    push (int32 (int32 self.i):snail):xstart
    push -1s
    stog.x* = (int32 (int32 self.i):snail)
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.i):snail)
    self.there = (+ self.there 1s)
0x001300:
    self.i = (+ self.i 1s)
    goto 0x0011A8
0x00131C:
    if !(>= self.there 3s) goto 0x00133C
0x001330:
    self.bringback = 2s
0x00133C:
    exit
