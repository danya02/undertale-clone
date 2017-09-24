0x000000:
    self.timer = 0s
    self.maxtimer = 754s
    if (== global.battlephase 1s) goto 0x000040
0x00002C:
    push (== global.battlephase 5s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.maxtimer = 678s
0x000054:
    self.soultimer = 0s
    self.soulmax = 460s
    self.active = 0s
    self.attacktimer = 0s
    self.attacktimermax = 9999s
    self.attackno = 0s
    self.save_attackno = 0s
    stog.attackid[0s] = 7s
    stog.attackid[1s] = 7s
    stog.attackid[2s] = 7s
    stog.alarm[0s] = 1s
    self.phase_1 = 0s
    self.phase_s = 0s
    self.ourattack = 1287248374
    self.overtype = 0s
    self.unhinged = 0s
    self.atimer = -1s
    if !(== global.battlephase 0s) goto 0x00017C
0x000158:
    pushenv 1585s 0x000178
0x000160:
    self.fileset = 3s
    self.savetimer = 20s
0x000178:
    popenv 0x000160
0x00017C:
    if (== global.battlephase 0s) goto 0x0001A4
0x000190:
    push (== global.battlephase 3s)
    goto 0x0001A8
0x0001A4:
    push 1s
0x0001A8:
    if !pop goto 0x00020C
0x0001AC:
    pushenv 1585s 0x0001E0
0x0001B4:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s 0s:mus_phase)
0x0001E0:
    popenv 0x0001B4
0x0001E4:
    self.atimer = (+ 200s (floor[]:int32 (random[]:int32 (var 200s))))
0x00020C:
    if (== global.battlephase 1s) goto 0x000234
0x000220:
    push (== global.battlephase 5s)
    goto 0x000238
0x000234:
    push 1s
0x000238:
    if !pop goto 0x00029C
0x00023C:
    pushenv 1585s 0x000270
0x000244:
    push (var 1s)
    call (caster_play[]:int32 (var 1s) -1s 1s:mus_phase)
0x000270:
    popenv 0x000244
0x000274:
    self.atimer = (+ 200s (floor[]:int32 (random[]:int32 (var 180s))))
0x00029C:
    if (== global.battlephase 2s) goto 0x0002C4
0x0002B0:
    push (== global.battlephase 4s)
    goto 0x0002C8
0x0002C4:
    push 1s
0x0002C8:
    if !pop goto 0x000320
0x0002CC:
    self.maxtimer = 500s
    self.overtype = 1s
    pushenv 1585s 0x00031C
0x0002EC:
    self.mustype = 3s
    call (caster_loop[]:int32 (var 1s) (var 1s) self.mus_repeat1)
0x00031C:
    popenv 0x0002EC
0x000320:
    if !(== global.battlephase 6s) goto 0x0003D8
0x000334:
    stog.alarm[8s] = 150s
    pushenv 1586s 0x000368
0x000350:
    self.wimpy = 1s
    self.desperate = 0s
0x000368:
    popenv 0x000350
0x00036C:
    self.maxtimer = 9999999
    self.atimer = 160s
    pushenv 1585s 0x0003C0
0x000390:
    self.mustype = 4s
    call (caster_play[]:int32 (var 1s) (var 1s) self.mus_finale2)
0x0003C0:
    popenv 0x000390
0x0003C4:
    stog.alarm[6s] = 1214s
0x0003D8:
    exit
