0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.carry 1s) goto 0x000064
0x000048:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000068
0x000064:
    push 0s
0x000068:
    if !pop goto 0x0000DC
0x00006C:
    push -5s
    if !(== 7s:flag 0s) goto 0x0000A4
0x000088:
    call (scr_musfadepause[]:int32 (var 0.05d))
0x0000A4:
    global.interact = 1s
    stog.alarm[4s] = 20s
    self.carry = 2s
    global.phasing = 1s
0x0000DC:
    if !(== self.carry 2s) goto 0x0000FC
0x0000F0:
    global.interact = 1s
0x0000FC:
    if !(== self.carry 3s) goto 0x000224
0x000110:
    self.voli = 0s
    push -5s
    if !(== 7s:flag 0s) goto 0x00016C
0x000138:
    call (caster_loop[]:int32 (var 1.1d) (var 0.2d) self.birdsong)
0x00016C:
    self.sprite_index = 1596s
    self.image_speed = 0.25d
    self.hdist = (- 1570.x self.x)
    self.vdist = (- (- 1570.y 10s) self.y)
    self.hspeed = (/ self.hdist (double 30s))
    self.vspeed = (/ self.vdist (double 30s))
    stog.alarm[4s] = 30s
    self.carry = 4s
0x000224:
    if !(== self.carry 4s) goto 0x000290
0x000238:
    self.voli = (+ self.voli 0.02d)
    push -5s
    if !(== 7s:flag 0s) goto 0x000290
0x000274:
    call (caster_set_volume[]:int32 self.voli self.birdsong)
0x000290:
    if !(== self.carry 5s) goto 0x000310
0x0002A4:
    self.x = 1570.x
    self.y = (- 1570.y 10s)
    self.vspeed = 0s
    self.hspeed = 0s
    self.sinoid = 0s
    self.carry = 6s
    stog.alarm[4s] = 25s
0x000310:
    if !(== self.carry 7s) goto 0x000358
0x000324:
    self.vspeed = -0.5d
    self.carry = 8s
    stog.alarm[4s] = 10s
0x000358:
    if !(== self.carry 9s) goto 0x0003A4
0x00036C:
    self.clamp_r = 1s
    stog.alarm[4s] = 100s
    self.carry = 10s
    self.sinoid = 2s
0x0003A4:
    if !(== self.carry 11s) goto 0x000420
0x0003B8:
    self.vspeed = 0s
    self.hspeed = -0.4d
    if !(== self.right 1s) goto 0x000400
0x0003EC:
    self.hspeed = 0.4d
0x000400:
    self.carry = 12s
    stog.alarm[4s] = 360s
0x000420:
    if !(== self.right 0s) goto 0x0004A4
0x000434:
    if !(== self.carry 12s) goto 0x000478
0x000448:
    if !(> self.x 100s) goto 0x000478
0x00045C:
    push -1s
    push (< 4s:alarm 5s)
    goto 0x00047C
0x000478:
    push 0s
0x00047C:
    if !pop goto 0x0004A4
0x000480:
    push -1s
    stog.alarm[(+ 4s:alarm 1s)] = 4s
0x0004A4:
    if !(== self.right 1s) goto 0x000528
0x0004B8:
    if !(== self.carry 12s) goto 0x0004FC
0x0004CC:
    if !(< self.x 240s) goto 0x0004FC
0x0004E0:
    push -1s
    push (< 4s:alarm 5s)
    goto 0x000500
0x0004FC:
    push 0s
0x000500:
    if !pop goto 0x000528
0x000504:
    push -1s
    stog.alarm[(+ 4s:alarm 1s)] = 4s
0x000528:
    if !(== self.carry 13s) goto 0x00057C
0x00053C:
    self.vspeed = 0.5d
    self.hspeed = 0s
    stog.alarm[4s] = 100s
    self.carry = 14s
0x00057C:
    if !(== self.carry 14s) goto 0x0005C0
0x000590:
    if !(< self.y 90s) goto 0x0005C0
0x0005A4:
    push -1s
    push (< 4s:alarm 5s)
    goto 0x0005C4
0x0005C0:
    push 0s
0x0005C4:
    if !pop goto 0x0005EC
0x0005C8:
    push -1s
    stog.alarm[(+ 4s:alarm 1s)] = 4s
0x0005EC:
    if !(== self.carry 14s) goto 0x000630
0x000600:
    if !(> self.y 90s) goto 0x000630
0x000614:
    push -1s
    push (> 4s:alarm 5s)
    goto 0x000634
0x000630:
    push 0s
0x000634:
    if !pop goto 0x00065C
0x000638:
    push -1s
    stog.alarm[(- 4s:alarm 1s)] = 4s
0x00065C:
    if !(== self.carry 14s) goto 0x0006DC
0x000670:
    if !(> self.voli 0s) goto 0x0006A4
0x000684:
    self.voli = (- self.voli 0.008d)
0x0006A4:
    push -5s
    if !(== 7s:flag 0s) goto 0x0006DC
0x0006C0:
    call (caster_set_volume[]:int32 self.voli self.birdsong)
0x0006DC:
    if !(== self.carry 15s) goto 0x000758
0x0006F0:
    push -5s
    if !(== 7s:flag 0s) goto 0x000720
0x00070C:
    call (caster_stop[]:int32 self.birdsong)
0x000720:
    self.sinoid = 0s
    self.clamp_r = 0s
    self.carry = 16s
    stog.alarm[4s] = 20s
0x000758:
    if !(== self.carry 17s) goto 0x0007E0
0x00076C:
    self.vspeed = 0s
    self.hspeed = 1s
    if !(== self.right 1s) goto 0x0007A4
0x000798:
    self.hspeed = -1s
0x0007A4:
    stog.alarm[4s] = 30s
    self.carry = 18s
    call (scr_musfaderesume[]:int32 (var 0.05d))
0x0007E0:
    if !(== self.carry 19s) goto 0x00082C
0x0007F4:
    self.hspeed = 0s
    self.vspeed = 1s
    stog.alarm[4s] = 10s
    self.carry = 20s
0x00082C:
    if !(== self.carry 21s) goto 0x000908
0x000840:
    pushenv 1570s 0x000854
0x000848:
    self.uncan = 0s
0x000854:
    popenv 0x000848
0x000858:
    self.vspeed = 0s
    self.x = (round[]:int32 self.x)
    self.y = (round[]:int32 self.y)
    self.sprite_index = 1594s
    self.image_speed = 0.25d
    self.carry = 0s
    if !(== self.right 0s) goto 0x0008E4
0x0008D4:
    self.right = 1s
    goto 0x0008F0
0x0008E4:
    self.right = 0s
0x0008F0:
    global.phasing = 0s
    global.interact = 0s
0x000908:
    if !(== self.sinoid 1s) goto 0x00097C
0x00091C:
    self.x = (+ self.x (/ (sin[]:int32 self.x) (double 2s)))
    self.y = (+ self.y (/ (cos[]:int32 self.y) (double 2s)))
0x00097C:
    if !(== self.sinoid 2s) goto 0x0009F8
0x000990:
    self.x = (+ self.x (- (random[]:int32 (var 1s)) 0.5d))
    self.y = (+ self.y (- (random[]:int32 (var 1s)) 0.5d))
0x0009F8:
    if !(== self.clamp_r 1s) goto 0x000A44
0x000A0C:
    [obj_mainchara].x = (round[]:int32 self.x)
    [obj_mainchara].y = (round[]:int32 (+ self.y 15s))
0x000A44:
    exit
