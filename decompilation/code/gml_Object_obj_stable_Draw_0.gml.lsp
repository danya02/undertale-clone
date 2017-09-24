0x000000:
    call (draw_sprite[]:int32 self.y self.x (var 0s) self.sprite_index)
    if !(== self.open 2s) goto 0x00006C
0x000040:
    call (draw_sprite[]:int32 self.y self.x (var 1s) self.sprite_index)
0x00006C:
    if !(== self.open 1s) goto 0x000170
0x000080:
    self.dist = (distance_to_object[]:int32 (var 1570s))
    if !(< self.dist 20s) goto 0x000170
0x0000AC:
    self.disto = (/ (double 10s) (+ self.dist 1s))
    if !(> self.disto 1s) goto 0x0000F0
0x0000E4:
    self.disto = 1s
0x0000F0:
    call (draw_sprite_part_ext[]:int32 self.disto (var 16777215) (var 1s) (var 1s) (+ self.y 10s) (+ self.x 10s) (var 20s) (var 40s) (var 0s) (var 0s) (var 0s) (var 1569s))
0x000170:
    if !(== self.con 1s) goto 0x0001A0
0x000184:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001A4
0x0001A0:
    push 0s
0x0001A4:
    if !pop goto 0x0001C0
0x0001A8:
    self.con = 2s
    self.open = 1s
0x0001C0:
    if !(== self.con 3s) goto 0x0001F0
0x0001D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0001F4
0x0001F0:
    push 0s
0x0001F4:
    if !pop goto 0x000244
0x0001F8:
    self.con = 4s
    self.open = 2s
    call (snd_play[]:int32 (var 106s))
    pushenv (int32 self.mysolid) 0x000240
0x000234:
    call (instance_destroy[]:int32 )
0x000240:
    popenv 0x000234
0x000244:
    exit
