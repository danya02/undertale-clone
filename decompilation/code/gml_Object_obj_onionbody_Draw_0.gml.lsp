0x000000:
    self.siner = (+ self.siner 1s)
    if !(>= self.on 1s) goto 0x000040
0x00002C:
    push (<= self.on 4s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0002BC
0x000048:
    if !(== self.on 1s) goto 0x000070
0x00005C:
    push (== self.special 1s)
    goto 0x000074
0x000070:
    push 0s
0x000074:
    if !pop goto 0x00017C
0x000078:
    self.special = 2s
    self.tenta1 = (instance_create[]:int32 (var 1078s) self.y (- self.x 32s))
    push 1s
    stog.on* = (int32 self.tenta1)
    push 2s
    stog.type* = (int32 self.tenta1)
    push 1s
    stog.special* = (int32 self.tenta1)
    self.tenta2 = (instance_create[]:int32 (var 1078s) (+ self.y 20s) (+ self.x 8s))
    push 1s
    stog.on* = (int32 self.tenta2)
    push 3s
    stog.type* = (int32 self.tenta2)
    push 1s
    stog.special* = (int32 self.tenta2)
0x00017C:
    if (== self.on 1s) goto 0x0001B8
0x000190:
    if (== self.on 2s) goto 0x0001B8
0x0001A4:
    push (== self.on 3s)
    goto 0x0001BC
0x0001B8:
    push 1s
0x0001BC:
    if !pop goto 0x0001F4
0x0001C0:
    if !(< self.onion_blue_alpha 1s) goto 0x0001F4
0x0001D4:
    self.onion_blue_alpha = (+ self.onion_blue_alpha 0.05d)
0x0001F4:
    call (draw_sprite_ext[]:int32 self.onion_blue_alpha (var 16777215) (var 0s) (+ self.onion_blue_alpha (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ (+ 0.1d self.onion_blue_alpha) (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) self.y self.x (var 0s) (var 1530s))
0x0002BC:
    if (== self.on 2s) goto 0x0002F8
0x0002D0:
    if (== self.on 3s) goto 0x0002F8
0x0002E4:
    push (== self.on 4s)
    goto 0x0002FC
0x0002F8:
    push 1s
0x0002FC:
    if !pop goto 0x000508
0x000300:
    push -5s
    if !(== 20s:flag 0s) goto 0x000328
0x00031C:
    self.onionsprite = 1537s
0x000328:
    push -5s
    if !(== 20s:flag 1s) goto 0x000350
0x000344:
    self.onionsprite = 1538s
0x000350:
    push -5s
    if !(== 20s:flag 2s) goto 0x000378
0x00036C:
    self.onionsprite = 1540s
0x000378:
    push -5s
    if !(== 20s:flag 3s) goto 0x0003A0
0x000394:
    self.onionsprite = 1539s
0x0003A0:
    call (draw_sprite_part[]:int32 (- self.y (floor[]:int32 self.onionh)) (- self.x 32s) (floor[]:int32 self.onionh) (var 63s) (var 0s) (var 0s) (floor[]:int32 (/ self.siner (double 6s))) self.onionsprite)
    if (== self.on 2s) goto 0x00044C
0x000438:
    push (== self.on 3s)
    goto 0x000450
0x00044C:
    push 1s
0x000450:
    if !pop goto 0x000488
0x000454:
    if !(< self.onionh 63s) goto 0x000488
0x000468:
    self.onionh = (+ self.onionh 0.5d)
0x000488:
    if !(== self.on 4s) goto 0x000508
0x00049C:
    if !(> self.onionh 0s) goto 0x0004D4
0x0004B0:
    self.onionh = (- self.onionh 0.5d)
    goto 0x000508
0x0004D4:
    if !(> self.onion_blue_alpha 0s) goto 0x000508
0x0004E8:
    self.onion_blue_alpha = (- self.onion_blue_alpha 0.05d)
0x000508:
    if !(== self.follow 1s) goto 0x000650
0x00051C:
    if !(< self.x 162s) goto 0x000548
0x000530:
    self.x = 162s
    self.hspeed = 0s
0x000548:
    if !(> self.x 1048s) goto 0x000574
0x00055C:
    self.x = 1048s
    self.hspeed = 0s
0x000574:
    if !(< self.x (- 1570.x 4s)) goto 0x0005CC
0x000594:
    self.hspeed = (+ self.hspeed 0.17d)
    self.x = (+ self.x 1s)
0x0005CC:
    if !(> self.x (+ 1570.x 6s)) goto 0x000624
0x0005EC:
    self.hspeed = (- self.hspeed 0.17d)
    self.x = (- self.x 1s)
0x000624:
    self.friction = 0.1d
    self.x = (floor[]:int32 self.x)
0x000650:
    exit
