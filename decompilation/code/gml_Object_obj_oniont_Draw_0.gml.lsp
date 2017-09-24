0x000000:
    self.siner = (+ self.siner 1s)
    if !(>= self.on 1s) goto 0x000040
0x00002C:
    push (<= self.on 4s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000188
0x000048:
    if (== self.on 1s) goto 0x000084
0x00005C:
    if (== self.on 2s) goto 0x000084
0x000070:
    push (== self.on 3s)
    goto 0x000088
0x000084:
    push 1s
0x000088:
    if !pop goto 0x0000C0
0x00008C:
    if !(< self.onion_blue_alpha 1s) goto 0x0000C0
0x0000A0:
    self.onion_blue_alpha = (+ self.onion_blue_alpha 0.1d)
0x0000C0:
    call (draw_sprite_ext[]:int32 self.onion_blue_alpha (var 16777215) (var 0s) (+ self.onion_blue_alpha (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) (+ (+ 0.1d self.onion_blue_alpha) (* (sin[]:int32 (/ self.siner (double 4s))) 0.05d)) self.y self.x (var 0s) (var 1531s))
0x000188:
    if (== self.on 2s) goto 0x0001C4
0x00019C:
    if (== self.on 3s) goto 0x0001C4
0x0001B0:
    push (== self.on 4s)
    goto 0x0001C8
0x0001C4:
    push 1s
0x0001C8:
    if !pop goto 0x00059C
0x0001CC:
    if !(== self.type 0s) goto 0x0001EC
0x0001E0:
    self.sprite_index = 1532s
0x0001EC:
    if !(== self.type 1s) goto 0x00020C
0x000200:
    self.sprite_index = 1536s
0x00020C:
    if !(== self.type 2s) goto 0x00022C
0x000220:
    self.sprite_index = 1534s
0x00022C:
    if !(== self.type 3s) goto 0x00024C
0x000240:
    self.sprite_index = 1535s
0x00024C:
    if !(== self.type 4s) goto 0x00026C
0x000260:
    self.sprite_index = 1533s
0x00026C:
    if (== self.type 0s) goto 0x0002A8
0x000280:
    if (== self.type 1s) goto 0x0002A8
0x000294:
    push (== self.type 2s)
    goto 0x0002AC
0x0002A8:
    push 1s
0x0002AC:
    if !pop goto 0x00034C
0x0002B0:
    call (draw_sprite_part[]:int32 (- self.y (floor[]:int32 self.onionh)) (- self.x (floor[]:int32 (/ self.sprite_width (double 2s)))) (floor[]:int32 self.onionh) self.sprite_width (var 0s) (var 0s) (floor[]:int32 (/ self.siner (double 6s))) self.sprite_index)
0x00034C:
    if !(== self.type 3s) goto 0x0003E4
0x000360:
    call (draw_sprite_part[]:int32 (- self.y (floor[]:int32 self.onionh)) (- self.x 22s) (floor[]:int32 self.onionh) self.sprite_width (var 0s) (var 0s) (floor[]:int32 (/ self.siner (double 6s))) self.sprite_index)
0x0003E4:
    if !(== self.type 4s) goto 0x00047C
0x0003F8:
    call (draw_sprite_part[]:int32 (- self.y (floor[]:int32 self.onionh)) (- self.x 6s) (floor[]:int32 self.onionh) self.sprite_width (var 0s) (var 0s) (floor[]:int32 (/ self.siner (double 6s))) self.sprite_index)
0x00047C:
    if (== self.on 2s) goto 0x0004A4
0x000490:
    push (== self.on 3s)
    goto 0x0004A8
0x0004A4:
    push 1s
0x0004A8:
    if !pop goto 0x000524
0x0004AC:
    if !(< self.onionh self.sprite_height) goto 0x000524
0x0004C4:
    if !(== self.special 0s) goto 0x0004F0
0x0004D8:
    self.onionh = (+ self.onionh 1s)
0x0004F0:
    if !(== self.special 1s) goto 0x000524
0x000504:
    self.onionh = (+ self.onionh 0.25d)
0x000524:
    if !(== self.on 4s) goto 0x00059C
0x000538:
    if !(> self.onionh 0s) goto 0x000568
0x00054C:
    self.onionh = (- self.onionh 1s)
    goto 0x00059C
0x000568:
    if !(> self.onion_blue_alpha 0s) goto 0x00059C
0x00057C:
    self.onion_blue_alpha = (- self.onion_blue_alpha 0.1d)
0x00059C:
    if !(== self.follow 1s) goto 0x0006BC
0x0005B0:
    if !(< self.x 162s) goto 0x0005E0
0x0005C4:
    self.x = self.xprevious
    self.hspeed = 0s
0x0005E0:
    if !(> self.x 1048s) goto 0x000610
0x0005F4:
    self.x = self.xprevious
    self.hspeed = 0s
0x000610:
    if !(< self.x (+ 1570.x 6s)) goto 0x000650
0x000630:
    self.hspeed = (+ self.hspeed 0.17d)
0x000650:
    if !(> self.x (+ 1570.x 16s)) goto 0x000690
0x000670:
    self.hspeed = (- self.hspeed 0.17d)
0x000690:
    self.friction = 0.1d
    self.x = (floor[]:int32 self.x)
0x0006BC:
    exit
