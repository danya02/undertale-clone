0x000000:
    if !(== self.active 1s) goto 0x0011CC
0x000014:
    self.attacktimer = (+ self.attacktimer 1s)
    self.timer = (+ self.timer 1s)
    if !(>= self.attacktimer self.attacktimermax) goto 0x0000C8
0x00005C:
    pushenv 1583s 0x000078
0x000064:
    call (event_user[]:int32 (var 2s))
0x000078:
    popenv 0x000064
0x00007C:
    self.attacktimer = -100s
    if !(< self.timer (- self.maxtimer 70s)) goto 0x0000C8
0x0000A8:
    self.attacktimer = -100s
    call (event_user[]:int32 (var 1s))
0x0000C8:
    if !(== self.timer self.atimer) goto 0x00015C
0x0000E0:
    self.fightbt = (instance_create[]:int32 (var 1596s) (var 420s) (var 320s))
    stog.alarm[5s] = 110s
    if !(== global.battlephase 6s) goto 0x00015C
0x000130:
    stog.alarm[5s] = 79s
    self.atimer = (+ self.atimer 80s)
0x00015C:
    if !(>= self.timer self.maxtimer) goto 0x00019C
0x000174:
    if !(== self.phase_s 0s) goto 0x00019C
0x000188:
    push (< global.battlephase 6s)
    goto 0x0001A0
0x00019C:
    push 0s
0x0001A0:
    if !pop goto 0x00039C
0x0001A4:
    if !(bool (instance_exists[]:int32 (var 1596s))) goto 0x0001D4
0x0001BC:
    pushenv 1596s 0x0001D0
0x0001C4:
    call (instance_destroy[]:int32 )
0x0001D0:
    popenv 0x0001C4
0x0001D4:
    self.phase_s = 1s
    stog.alarm[4s] = 155s
    pushenv 1585s 0x000278
0x0001FC:
    if !(== self.mustype 3s) goto 0x000254
0x000210:
    call (caster_stop[]:int32 (var -3s))
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_endnote)
    self.mustype = 0s
0x000254:
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_alarm)
0x000278:
    popenv 0x0001FC
0x00027C:
    pushenv 1587s 0x000290
0x000284:
    self.tvmode = 1s
0x000290:
    popenv 0x000284
0x000294:
    if !(== global.soul_rescue 0s) goto 0x0002C0
0x0002A8:
    pushenv 1593s 0x0002BC
0x0002B0:
    self.flash = 1s
0x0002BC:
    popenv 0x0002B0
0x0002C0:
    if !(== global.soul_rescue 1s) goto 0x0002EC
0x0002D4:
    pushenv 1593s 0x0002E8
0x0002DC:
    self.flash = 2s
0x0002E8:
    popenv 0x0002DC
0x0002EC:
    if !(== global.soul_rescue 2s) goto 0x000318
0x000300:
    pushenv 1594s 0x000314
0x000308:
    self.flash = 1s
0x000314:
    popenv 0x000308
0x000318:
    if !(== global.soul_rescue 3s) goto 0x000344
0x00032C:
    pushenv 1594s 0x000340
0x000334:
    self.flash = 2s
0x000340:
    popenv 0x000334
0x000344:
    if !(== global.soul_rescue 4s) goto 0x000370
0x000358:
    pushenv 1595s 0x00036C
0x000360:
    self.flash = 1s
0x00036C:
    popenv 0x000360
0x000370:
    if !(== global.soul_rescue 5s) goto 0x00039C
0x000384:
    pushenv 1595s 0x000398
0x00038C:
    self.flash = 2s
0x000398:
    popenv 0x00038C
0x00039C:
    if !(== self.phase_s 2s) goto 0x000500
0x0003B0:
    pushenv 1587s 0x0003C4
0x0003B8:
    self.tvmode = 2s
0x0003C4:
    popenv 0x0003B8
0x0003C8:
    pushenv 1581s 0x0003DC
0x0003D0:
    self.move = 0s
0x0003DC:
    popenv 0x0003D0
0x0003E0:
    pushenv 1585s 0x000434
0x0003E8:
    call (caster_stop[]:int32 (var -3s))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_noise)
    call (event_user[]:int32 (var 6s))
0x000434:
    popenv 0x0003E8
0x000438:
    self.idealhx = 314s
    self.idealhy = 400s
    if !(== global.soul_rescue 2s) goto 0x000470
0x000464:
    self.idealhy = 450s
0x000470:
    self.nowhx = 1581.x
    self.nowhy = 1581.y
    self.nowhxadd = (/ (- self.idealhx self.nowhx) (double 40s))
    self.nowhyadd = (/ (- self.idealhy self.nowhy) (double 40s))
    self.phase_s = 3s
    stog.alarm[4s] = 40s
0x000500:
    if !(== self.phase_s 3s) goto 0x00054C
0x000514:
    [obj_vsflowey_heart].x = (+ 1581.x self.nowhxadd)
    [obj_vsflowey_heart].y = (+ 1581.y self.nowhyadd)
0x00054C:
    if !(== self.phase_s 4s) goto 0x0009B4
0x000560:
    [obj_vsflowey_heart].x = self.idealhx
    [obj_vsflowey_heart].y = self.idealhy
    [obj_vsflowey_heart].move = 1s
    pushenv 1587s 0x0005A0
0x000594:
    self.tvmode = 3s
0x0005A0:
    popenv 0x000594
0x0005A4:
    pushenv 1585s 0x0005F4
0x0005AC:
    call (caster_stop[]:int32 (var -3s))
    push (var 1s)
    call (caster_loop[]:int32 (var 1s) -1s (int32 global.soul_rescue):mus_soul)
0x0005F4:
    popenv 0x0005AC
0x0005F8:
    if !(== global.soul_rescue 0s) goto 0x000630
0x00060C:
    call (instance_create[]:int32 (var 1626s) (var 0s) (var 0s))
0x000630:
    if !(== global.soul_rescue 1s) goto 0x000814
0x000644:
    call (instance_create[]:int32 (var 1617s) (var 0s) (* self.room_width 0.5d))
    call (instance_create[]:int32 (var 1617s) (var -120s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -120s) (* self.room_width 1s))
    call (instance_create[]:int32 (var 1617s) (var -400s) (* self.room_width 0.5d))
    call (instance_create[]:int32 (var 1617s) (var -520s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -520s) (* self.room_width 1s))
    self.lg = (instance_create[]:int32 (var 1617s) (var -800s) (* self.room_width 0.5d))
    pushenv (int32 self.lg) 0x0007B8
0x0007A4:
    call (event_user[]:int32 (var 6s))
0x0007B8:
    popenv 0x0007A4
0x0007BC:
    call (instance_create[]:int32 (var 1617s) (var -920s) (* self.room_width 0s))
    call (instance_create[]:int32 (var 1617s) (var -920s) (* self.room_width 1s))
0x000814:
    if !(== global.soul_rescue 2s) goto 0x00084C
0x000828:
    call (instance_create[]:int32 (var 1614s) (var 0s) (var 0s))
0x00084C:
    if !(== global.soul_rescue 3s) goto 0x000884
0x000860:
    call (instance_create[]:int32 (var 1624s) (var 0s) (var 0s))
0x000884:
    if !(== global.soul_rescue 4s) goto 0x000920
0x000898:
    call (instance_create[]:int32 (var 1619s) (var 260s) (var 190s))
    self.ppp = (instance_create[]:int32 (var 1619s) (var 260s) (var 415s))
    push 1s
    stog.spec* = (int32 self.ppp)
    call (instance_create[]:int32 (var 1619s) (var 260s) (var 640s))
0x000920:
    if !(== global.soul_rescue 5s) goto 0x000970
0x000934:
    call (instance_create[]:int32 (var 1609s) (/ self.room_height (double 2s)) (/ self.room_width (double 2s)))
0x000970:
    if !(> global.soul_rescue 5s) goto 0x0009A8
0x000984:
    call (instance_create[]:int32 (var 1626s) (var 0s) (var 0s))
0x0009A8:
    self.phase_s = 5s
0x0009B4:
    if !(== self.phase_s 5s) goto 0x000BF4
0x0009C8:
    self.soultimer = (+ self.soultimer 1s)
    if !(>= self.soultimer self.soulmax) goto 0x000BF4
0x0009F8:
    self.idealhx = 314s
    self.idealhy = 400s
    if !(== global.soul_rescue 6s) goto 0x000A30
0x000A24:
    self.idealhy = 280s
0x000A30:
    self.nowhx = 1581.x
    self.nowhy = 1581.y
    self.nowhxadd = (/ (- self.idealhx self.nowhx) (double 40s))
    self.nowhyadd = (/ (- self.idealhy self.nowhy) (double 40s))
    [obj_vsflowey_heart].move = 0s
    pushenv 1587s 0x000AC0
0x000AB4:
    self.tvmode = 2s
0x000AC0:
    popenv 0x000AB4
0x000AC4:
    pushenv 1601s 0x000AD8
0x000ACC:
    call (instance_destroy[]:int32 )
0x000AD8:
    popenv 0x000ACC
0x000ADC:
    pushenv 1585s 0x000B1C
0x000AE4:
    call (caster_stop[]:int32 (var -3s))
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_noise)
0x000B1C:
    popenv 0x000AE4
0x000B20:
    self.phase_s = 6s
    stog.alarm[4s] = 20s
    pushenv 1593s 0x000B54
0x000B48:
    self.flash = 0s
0x000B54:
    popenv 0x000B48
0x000B58:
    pushenv 1594s 0x000B6C
0x000B60:
    self.flash = 0s
0x000B6C:
    popenv 0x000B60
0x000B70:
    pushenv 1595s 0x000B84
0x000B78:
    self.flash = 0s
0x000B84:
    popenv 0x000B78
0x000B88:
    if !(== global.soul_rescue 6s) goto 0x000BBC
0x000B9C:
    self.phase_s = 20s
    stog.alarm[4s] = 40s
0x000BBC:
    global.battlephase = (+ global.battlephase 1s)
    if !(>= global.battlephase 6s) goto 0x000BF4
0x000BE8:
    global.battlephase = 0s
0x000BF4:
    if (== self.phase_s 6s) goto 0x000C1C
0x000C08:
    push (== self.phase_s 8s)
    goto 0x000C20
0x000C1C:
    push 1s
0x000C20:
    if !pop goto 0x000C5C
0x000C24:
    [obj_vsflowey_heart].x = (+ 1581.x self.nowhxadd)
    [obj_vsflowey_heart].y = (+ 1581.y self.nowhyadd)
0x000C5C:
    if !(== self.phase_s 7s) goto 0x000CB0
0x000C70:
    pushenv 1585s 0x000C8C
0x000C78:
    call (event_user[]:int32 (var 6s))
0x000C8C:
    popenv 0x000C78
0x000C90:
    self.phase_s = 8s
    stog.alarm[4s] = 20s
0x000CB0:
    if !(== self.phase_s 9s) goto 0x000CFC
0x000CC4:
    [obj_vsflowey_heart].x = self.idealhx
    [obj_vsflowey_heart].y = self.idealhy
    [obj_vsflowey_heart].move = 1s
    self.phase_s = 10s
0x000CFC:
    if !(== self.phase_s 10s) goto 0x000D78
0x000D10:
    pushenv 1587s 0x000D24
0x000D18:
    self.tvmode = 0s
0x000D24:
    popenv 0x000D18
0x000D28:
    pushenv 1585s 0x000D44
0x000D30:
    call (caster_stop[]:int32 (var -3s))
0x000D44:
    popenv 0x000D30
0x000D48:
    call (instance_create[]:int32 (var 1584s) (var 0s) (var 0s))
    call (instance_destroy[]:int32 )
0x000D78:
    if (== self.phase_s 20s) goto 0x000DB4
0x000D8C:
    if (== self.phase_s 24s) goto 0x000DB4
0x000DA0:
    push (== self.phase_s 26s)
    goto 0x000DB8
0x000DB4:
    push 1s
0x000DB8:
    if !pop goto 0x000DF4
0x000DBC:
    [obj_vsflowey_heart].x = (+ 1581.x self.nowhxadd)
    [obj_vsflowey_heart].y = (+ 1581.y self.nowhyadd)
0x000DF4:
    if !(== self.phase_s 21s) goto 0x000EE8
0x000E08:
    [obj_vsflowey_heart].x = self.idealhx
    [obj_vsflowey_heart].y = self.idealhy
    [obj_vsflowey_heart].move = 1s
    pushenv 1587s 0x000E48
0x000E3C:
    self.tvmode = 5s
0x000E48:
    popenv 0x000E3C
0x000E4C:
    call (caster_stop[]:int32 (var -3s))
    call (instance_create[]:int32 (var 1603s) (var 0s) (var 0s))
    pushenv 1585s 0x000EB0
0x000E8C:
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_finale1_l)
0x000EB0:
    popenv 0x000E8C
0x000EB4:
    stog.alarm[4s] = 308s
    stog.alarm[4s] = 615s
    self.phase_s = 22s
0x000EE8:
    if !(== self.phase_s 23s) goto 0x001004
0x000EFC:
    self.idealhx = 314s
    self.idealhy = 400s
    self.nowhx = 1581.x
    self.nowhy = 1581.y
    self.nowhxadd = (/ (- self.idealhx self.nowhx) (double 40s))
    self.nowhyadd = (/ (- self.idealhy self.nowhy) (double 40s))
    [obj_vsflowey_heart].move = 0s
    pushenv 1587s 0x000FA4
0x000F98:
    self.tvmode = 2s
0x000FA4:
    popenv 0x000F98
0x000FA8:
    pushenv 1585s 0x000FD4
0x000FB0:
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_noise)
0x000FD4:
    popenv 0x000FB0
0x000FD8:
    self.phase_s = 24s
    stog.alarm[4s] = 20s
    global.battlephase = 6s
0x001004:
    if !(== self.phase_s 25s) goto 0x001058
0x001018:
    pushenv 1585s 0x001034
0x001020:
    call (event_user[]:int32 (var 6s))
0x001034:
    popenv 0x001020
0x001038:
    self.phase_s = 26s
    stog.alarm[4s] = 20s
0x001058:
    if !(== self.phase_s 27s) goto 0x001134
0x00106C:
    [obj_vsflowey_heart].x = self.idealhx
    [obj_vsflowey_heart].y = self.idealhy
    [obj_vsflowey_heart].move = 1s
    self.phase_s = 10s
    stog.msg[0s] = "* Flowey's DEFENSE&  dropped to 0^4! %%"
    stog.msg[2s] = "%%%"
    global.typer = 70s
    call (instance_create[]:int32 (var 1598s) (var 300s) (var 180s))
    pushenv 1586s 0x001118
0x00110C:
    self.desperate = 0s
0x001118:
    popenv 0x00110C
0x00111C:
    pushenv 1586s 0x001130
0x001124:
    self.wimpy = 1s
0x001130:
    popenv 0x001124
0x001134:
    if !(> self.timer (+ self.maxtimer 120s)) goto 0x0011CC
0x001154:
    if !(bool (instance_exists[]:int32 (var 1627s))) goto 0x001184
0x00116C:
    pushenv 1627s 0x001180
0x001174:
    call (instance_destroy[]:int32 )
0x001180:
    popenv 0x001174
0x001184:
    pushenv 1589s 0x0011A4
0x00118C:
    self.md = 0s
    self.con = 0s
0x0011A4:
    popenv 0x00118C
0x0011A8:
    pushenv 1591s 0x0011C8
0x0011B0:
    self.md = 0s
    self.con = 0s
0x0011C8:
    popenv 0x0011B0
0x0011CC:
    exit
