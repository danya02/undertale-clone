0x000000:
    if !(== self.dingus 2s) goto 0x000050
0x000014:
    self.currentvol = (- self.currentvol 0.02d)
    call (caster_set_volume[]:int32 self.currentvol self.gameoversong)
0x000050:
    if !(bool (keyboard_multicheck_pressed[]:int32 (var 0s))) goto 0x00007C
0x000068:
    call (event_user[]:int32 (var 0s))
0x00007C:
    if !(== self.heartcon 5s) goto 0x000478
0x000090:
    self.hearttimer = (+ self.hearttimer 1s)
    push -5s
    if !(< 502s:flag 2s) goto 0x0002D4
0x0000C4:
    if !(> self.hearttimer 80s) goto 0x0000EC
0x0000D8:
    push (< self.hearttimer 120s)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000164
0x0000F4:
    self.x = (- (+ self.thisx (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    self.y = (- (+ self.thisy (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
0x000164:
    if !(== self.hearttimer 120s) goto 0x0001C0
0x000178:
    self.x = (+ self.thisx 2s)
    self.y = self.thisy
    call (snd_play[]:int32 (var 31s))
    self.sprite_index = 34s
0x0001C0:
    if !(== self.hearttimer 150s) goto 0x000228
0x0001D4:
    global.typer = 61s
    global.msc = 0s
    stog.msg[0s] = "* But it refused^5.%%"
    call (instance_create[]:int32 (var 782s) (var 100s) (var 160s))
0x000228:
    if !(== self.hearttimer 220s) goto 0x000260
0x00023C:
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
0x000260:
    if !(== self.hearttimer 254s) goto 0x0002D0
0x000274:
    global.border = 0s
    global.hp = global.maxhp
    call (caster_free[]:int32 (var -3s))
    pushenv 153s 0x0002B8
0x0002AC:
    call (instance_destroy[]:int32 )
0x0002B8:
    popenv 0x0002AC
0x0002BC:
    call (room_goto[]:int32 (var 306s))
0x0002D0:
    goto 0x000478
0x0002D4:
    if !(> self.hearttimer 20s) goto 0x0002FC
0x0002E8:
    push (< self.hearttimer 40s)
    goto 0x000300
0x0002FC:
    push 0s
0x000300:
    if !pop goto 0x000374
0x000304:
    self.x = (- (+ self.thisx (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
    self.y = (- (+ self.thisy (random[]:int32 (var 3s))) (random[]:int32 (var 3s)))
0x000374:
    if !(== self.hearttimer 40s) goto 0x0003D0
0x000388:
    self.x = (+ self.thisx 2s)
    self.y = self.thisy
    call (snd_play[]:int32 (var 31s))
    self.sprite_index = 34s
0x0003D0:
    if !(== self.hearttimer 60s) goto 0x000408
0x0003E4:
    call (instance_create[]:int32 (var 557s) (var 0s) (var 0s))
0x000408:
    if !(== self.hearttimer 94s) goto 0x000478
0x00041C:
    global.border = 0s
    global.hp = global.maxhp
    call (caster_free[]:int32 (var -3s))
    pushenv 153s 0x000460
0x000454:
    call (instance_destroy[]:int32 )
0x000460:
    popenv 0x000454
0x000464:
    call (room_goto[]:int32 (var 306s))
0x000478:
    exit
