0x000000:
    if !(> self.active 0s) goto 0x0000DC
0x000014:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000040
0x00002C:
    push (== self.lit 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0000DC
0x000048:
    if !(> 1570.x (- self.x 20s)) goto 0x000088
0x000068:
    push (< 1570.x (+ self.x 50s))
    goto 0x00008C
0x000088:
    push 0s
0x00008C:
    if !pop goto 0x0000DC
0x000090:
    self.lit = 1s
    call (snd_play[]:int32 (var 114s))
    self.sprite_index = 2140s
    if !(== self.active 2s) goto 0x0000DC
0x0000D0:
    self.sprite_index = 2141s
0x0000DC:
    exit
